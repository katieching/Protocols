# Scoring leading dendrites in differentiating OSNs

This document describes our procedure for scoring how much of the dendrite extends ahead of leading migrating centrioles in unexpanded sections of olfactory epithelium.


## Materials

-  Slidebook, Slidebook Reader, or similar software for making measurements in microscopy images 


## Procedure

1. Find a group of migrating centrioles:

-	For the purposes of this experiment, migrating centrioles are defined as groups of centrin puncta that are basal to the dendritic knobs that are at the apical surface. 
-	They should be longer in the apical-to-basal dimension than they are in the lateral dimension.
-	Acquire a z-stack of the centrioles and the dendrite that is apical to the group.


2. Determine if the dendrite ahead of the centriole group:

	(a) has another group of centrioles apical to it in the same dendrite. (GAP43 and TUBB3 staining are how we assess this.)
	    If this is the case, this is not a leading group of centrioles.
	    
	(b) is cut off by sectioning. (GAP43 and/or TUBB3 will have a blunt end that disappears with the rest of the surrounding signal in the stack.)
	    If this is the case, it cannot be determined if this is leading or lagging group of migrating centrioles.
	    
	(c) has a grow cone. (GAP43 will have a change is shape at the end, either widening or forking. TUBB3 will either fork, trail off, or come to a point within the area defined by the GAP43 signal.)
	    Proceed with these images.


3. Measure the leading dendrite:

-	The start point is defined as the leading edge of the centriole group. This eliminates extra noise in the measurements that comes from variation in group size.
-	The end point is defined as the leading edge of the growth cone.

	(a) Record the number of z steps between the start and end points.
	
	(b) Record the z step size. 
	
	(c) Calculate the height, H = (number of steps - 1) x (step size).
	
	(d) Create a maximum intensity projection over the z axis. 
	
	(e) Measure the distance between the start and end points in the projection. This is the projected length, Lp.
	
	(f) Calculate the length in 3D, L3d = sqrt(H^2 + Lp^2). 
	
	    Note that this does not account for the curvature of the dendrite and is only a linear measurement from start to end.
	    We determined that this has a minimal contribution for the present study, but it may be of interest to future studies.

L3d is the measurement reported.
