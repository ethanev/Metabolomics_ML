# Metabolomics_ML
This project is for a meta-analysis of published metabolomics data sets from various human fluid (serum / plasma / CSF etc) for performing various diagnostics and predictive modeling.

1) Scripts to download data are found in the 1_* directory
2) These data then need to be reprocessed with XCMS but first need a common format (mzML/mzMXL or mzData) for which the 2_* directory helps with
3) Perform XCMS processing to extract features in 3_*
4) use extracting_features.ipynb to package the data from the outcome of the XCMS processing / author data into a form suitable for the next steps then build various predictive modelings all with scripts in 4_*
