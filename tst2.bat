@echo off 
setlocal enableDelayedExpansion 
zowe zos-jobs view job-status-by-jobid J0048833
SLEEP 5
PAUSE