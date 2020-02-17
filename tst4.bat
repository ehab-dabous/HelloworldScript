@echo off 
setlocal enableDelayedExpansion 
zowe  zos-jobs submit data-set "PFP.QA.DEVOPS.CNTL(PFSCOA01)" --vasc
PAUSE


