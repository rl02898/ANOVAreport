/*
 This file is auto-generated by the statrep package.
 Do not edit this file or your changes will be lost.
 Edit the LaTeX file instead.
 
 See the statrep package documentation and the file
 statrep.cfg for information on these settings.
 */
 
 
%include "/folders/myshortcuts/HW_5/STATHW5_SR_preamble.sas" /nosource;
/* Remove all output files. */
%cleandir(/folders/myshortcuts/HW_5, tex, tex);
%cleandir(/folders/myshortcuts/HW_5, png, png);
%cleandir(/folders/myshortcuts/HW_5, lst, lst);


/* Start program with a null title. */
title;

title 'Inorganic Phosphate Levels';

data PhosphateLevels;
input IDNumber Levels;
datalines;
1 2.3
1 4.1
1 4.2
1 4.0
1 4.6
1 4.6
1 3.8
1 5.2
1 3.1
1 3.7
1 3.8
2 3.0
2 4.1
2 3.9
2 3.1
2 3.3
2 2.9
2 3.3
2 3.9
3 3.0
3 2.6
3 3.1
3 2.2
3 2.1
3 2.4
3 2.8
3 3.4
3 2.9
3 2.6
3 3.1
3 3.2
;

/* IDNumber 1, 2, and 3 correspond to the following:
1 - Hyperinsulinemic Obese
2 - Non-hyperinsulinemic Obese
3 - Control */

run;

%output(hw)
proc means;
by IDNumber;

proc anova;
class IDNumber;
model Levels = IDNumber;
means IDNumber/ lsd tukey;

proc reg;
id IDNumber;
model Levels=IDNumber/ cli;

proc print;
run;

%endoutput(hw)

%write(tsta,store=hw,type=listing) 

%write(tstb,store=hw,type=graphic) 
