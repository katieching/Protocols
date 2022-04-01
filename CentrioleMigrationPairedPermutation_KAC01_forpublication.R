# -----------------------------
# title: CentrioleMigrationPairedPermutation
# author: Katie Ching
# reference: code based on techniques learned at UCLA Collaboratory
# input: csv file of paired counts, drug vs. control. 
#        In Ching, Wang, and Stearns 2022, each (animal + region + time) category (e.g. sample 1, number of subapical groups, t = 1) was treated as a pair of data points.
# outputs: 1) the mean difference between drug and control, 
#          2) the likelihood that this value would be found by random chance, where random chance is simulated by random swapping of drug and control values 10000 times

# -----------------------------

# Load the data.
counts = read.csv("C:/Users/.../PaclitaxelData_ForPairedPermTest.csv")
### Replace the path with the location of your data.
### (written for PC, slashes may change for Mac users) 

## How many data points do we have?
NumSamples = nrow(counts)

# Format the data.
ControlCounts = counts$control
DrugCounts = counts$drug

# -----------------------------

# Perform a paired null hypothesis permutation test.
NumResamples = 10000

## See what the original data showed.
OrigEffectSize = mean( DrugCounts - ControlCounts )

## Simulate random chance if there's no effect by doing a 
## "coin flip" on each pair of values to keep or swap.
### List all rows.
indices <- 1:nrow(counts)
### Make a list (all NAs, length = NumResamples) for the resampling results.
TestStatisticDistribution <- rep(NA,NumResamples)
for (i in 1 : NumResamples) {
  CountsForPerms <- counts[,c("control","drug")]
  # simulate chance: for each row, randomly swap samples
  ShouldFlipRows <- runif( nrow(CountsForPerms) ) > .5
  RowsToFlip = which (ShouldFlipRows)
  CountsForPerms[RowsToFlip,1:2] <- CountsForPerms[RowsToFlip,2:1]
  # calculate statistic
  TestStatisticDistribution[i] <- mean(CountsForPerms$drug - CountsForPerms$control)
}

## Calculate the p-value. What fraction of times in our resampling do we get an effect size at least as large as what we got in our data?
pval <- (sum(TestStatisticDistribution >= OrigEffectSize) + 
           sum(TestStatisticDistribution <= -OrigEffectSize) ) / (NumResamples)
sprintf("null distribution; observed effect %g, pval of observed effect %g", OrigEffectSize, pval)



# -----------------------------

