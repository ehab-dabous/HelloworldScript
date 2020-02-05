@echo off 
setlocal enableDelayedExpansion 
for /F "tokens=1" %%x in ('zos-files list all-members "pfp.qa.rexx.mvsixd" --max 15 --u mvsixd --pass sama3406 --host db2a --port 32208') do (
    echo  %%x)
PAUSE



