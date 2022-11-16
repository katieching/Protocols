# Selecting guide sites for CRISPR/Cas9 editing in zebrafish

This procedure describes a workflow for selecting homology sites when editing a gene with CRISPR/Cas9 in zebrafish.

**References:**

Talbot and Amacher 2014 protocol

El-Brolosy, M.A., Kontarakis, Z., Rossi, A. et al. Genetic compensation triggered by mutant mRNA degradation. Nature 568, 193–197 (2019). doi: 10.1038/s41586-019-1064-z

Miguel A. Moreno-Mateos*, Charles E. Vejnar*, Jean-Denis Beaudoin, Juan P. Fernandez, Emily K. Mis, Mustafa K. Khokha and Antonio J. Giraldez (*Equal contribution) CRISPRscan: Designing highly efficient sgRNAs for CRISPR/Cas9 targeting in vivo Nature Methods 2015d doi:10.1038/nmeth.3543


## Procedure

### Find the genomic sequence for your gene of interest.
1.  Go to Ensembl: https://uswest.ensembl.org/index.html
2.  Search for your gene of interest in zebrafish.
3.  Click on the correct gene (not the transcript), and click the hyperlink for the location.
4.  Click on "Export Data" on the lefthand side menu, and download the region plus a few hundred bases flanking on both sides.
5.  Copy and paste the sequence into APE, Benchling, or your favorite editor.
(While you're on Ensembl, use the "Drag" tool to take a look at what else is near your gene of interest. Also take note of how large the gene is and whether it's on the forward or reverse strand.)

### Find the mRNA sequence for your gene of interest.
1.  Go to NCBI Gene: https://www.ncbi.nlm.nih.gov/gene
2.  Search for and select your gene of interest in zebrafish.
3.  Scroll down to the "mRNA and Protein(s)" section. Click on the hyperlink for the transcript (listed as [mRNA] -> [protein]). Take note of the status and whether it is confirmed or provisional, and whether there are multiple transcripts/isoforms.
4.  Scroll down to the nucleotide sequence. Copy and paste it into APE, Benchling, or other editor.
5.  Find a putative start site and create a translation (easiest in Benchling). Compare the first amino acids to the translation on NCBI. If they match, this is the most likely start of the translated region. The mRNA upstream of the translated region is the 5' UTR.

### Find your guides' homology regions and order the short oligo.
1.  Compare the mRNA and genomic sequences to see if the two sources agree on where the transcript is likely to start. You can also search for a TATA box visually.
2.  Select a region that is upstream of where both Ensembl and NCBI think the transcript starts.
3.  Copy and paste it into CRISPRscan under "Submit sequence" https://www.crisprscan.org/sequence/
4.  Check that the settings are what you want. (You may change the number of mismatches, which I believe is the number of mismatches between the guide and your target sequence. These can make the guide have fewer off-target cuts.) Click "Get sgRNAs."
5.  Select a target with a high CRISPRscan score (ideally >60), a low CFD (reflecting off-target cutting), and 0 off-target cutting in "all" and "seed."
6.  Click on the target and copy the oligo sequence given.
7.  Add "GCG" at the 5' end for the clamp, which is missing from this oligo. (See Talbot and Amacher guide for the entire composition of the oligo.)
8.  Repeat to find as many guides as you need. For deleting the neurofilament genes, I've aimed to delete each gene in its entirety. To do so, I designed two guides ahead of the transcriptional start cut avoid getting any transcript that might trigger genetic compensation. I also designed two guides downstream of the gene (or as far downstream as possible, assuming 5kb maximum can be excised from the DNA), in case there's a cryptic start site.
9.  Order the oligos from IDT.