SETLOCAL ENABLEDELAYEDEXPANSION
cd C:\Users\bardh\AppData\Roaming\npm
for /f "tokens=*" %%i in ('zowe zos-jobs submit data-set "ZA1018.JCL(REXEXC00)" --wfo --rff retcode --rft string') do set RC=%%i
if "%RC%"=="CC 0001" (
for /f "tokens=*" %%i in ('zowe zos-jobs submit data-set "ZA1018.JCL(REXEXC01)" --wfo --rff retcode --rft string') do set RC=%%i
)    
if "%RC%"=="CC 0000" (
for /f "tokens=*" %%i in ('zowe zos-jobs submit data-set "ZA1018.JCL(REXEXC02)" --wfo --rff retcode --rft string') do set RC=%%i
)
if "%RC%"=="CC 0001" (
for /f "tokens=*" %%i in ('zowe zos-jobs submit data-set "ZA1018.JCL(REXEXC03)" --wfo --rff retcode --rft string') do set RC=%%i
)
if NOT "%RC%"=="CC 0000" (
echo ALL JOBS DIDN'T RUN !
)