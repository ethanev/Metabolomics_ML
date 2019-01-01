# Metabolomics_ML
This project is for a metaanalysis of published, untargeted metabolomics datasets from various human fluid (serum / plasma / CSF etc) for performing various diagnostics and predictive modeling 

1) Scripts to download data are found in the 1_* directory
2) These data then need to be reprocessed with XCMS but fit need a common format (mzML/mzMXL or mzData) for which the 2_* directory helps with
3) Perform XCMS processing to extract features in 3_*
4) Build various predictive modelings with scripts in 4_*
