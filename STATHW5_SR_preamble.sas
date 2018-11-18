/*
 This file is auto-generated by the statrep package.
 Do not edit this file or your changes will be lost.
 Edit the LaTeX file instead.
 
 See the statrep package documentation and the file
 statrep.cfg for information on these settings.
 */
 
 
/* Set and invoke macro variable defaults. */
%let rootdir=/folders/myshortcuts/HW_5;
%let defaultstyle=statistical;
%let latexstyle=statrep;
%let graphtype=png;
%let graphicdir=/folders/myshortcuts/HW_5/png;
%let listingdir=/folders/myshortcuts/HW_5/lst;
%let latexdir=/folders/myshortcuts/HW_5/tex;
%let defaultlinesize=80;
%let defaultpagesize=500;
%let defaultdpi=300;
%let odsgraphopts=;
%let defaultdests=latex;

options nodate nonumber
ls=&defaultlinesize ps=&defaultpagesize
formchar='|----|+|---+=|-/\<>*';

ods graphics on;
/* Include SAS macro definitions. */
%include "/folders/myshortcuts/HW_5/statrep_macros.sas" /nosource;
