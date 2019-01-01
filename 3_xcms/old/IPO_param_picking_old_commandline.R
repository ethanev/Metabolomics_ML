library(IPO)
mz <- read.csv('mzData.txt', stringsAsFactor=FALSE)$fname
peakpickingParameters <- getDefaultXcmsSetStartingParams('centWave')
time.xcmsSet <- system.time({resultPeakpicking <- optimizeXcmsSet(files = mz[5], params = peakpickingParameters, isotopeIdentification="CAMERA", nSlaves = 2, subdir = NULL, plot = FALSE)})

optimizedXcmsSetObject <- resultPeakpicking$best_settings$xset
retcorGroupParameters <- getDefaultRetGroupStartingParams()
time.RetGroup <- system.time({resultRetcorGroup <- optimizeRetGroup(xset = optimizedXcmsSetObject, params = retcorGroupParameters, nSlaves = 1, subdir = NULL, plot = FALSE)})
writeRScript(resultPeakpicking$best_settings$parameters, resultRetcorGroup$best_settings)
