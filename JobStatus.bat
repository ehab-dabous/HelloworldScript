@echo off 
setlocal enableDelayedExpansion 
zowe  zos-jobs list jobs -o "mvsixd*" -p "pfsc*"
PAUSE
