@echo off 
setlocal enableDelayedExpansion 
for /F "tokens=1" %%x in ('zowe  zos-files list all-members "pfp.qa.rexhx.mvsixd" --max 10') do (
    echo  %%x)
