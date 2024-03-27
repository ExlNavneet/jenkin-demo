@echo OFF
setlocal

set "searchstartHash=startHash"
FOR /F "tokens=*" %%g IN ('git rev-parse Head') do (SET insertsartHash=%%g)

set "textFile=C:\Users\Janardan212975\Documents\Jenkin\ADM1\automated-versioning-manager-perpare-package\version-manager.properties"

(FOR /f "usebackq tokens=1* delims==" %%i in ("%textFile%") do (
   if "%%i" equ "%searchstartHash%" (
      echo %searchstartHash%=%insertsartHash%
   ) else if "%%j" neq "" (
      echo %%i=%%j
   ) else (
      echo %%i
   )
)) > temp.tmp

move /Y temp.tmp "%textFile%"