@echo OFF
setlocal


set "searchstartHash=startHash"
FOR /F "tokens=*" %%g IN ('cd "C:\Users\Navneet177863\Documents\Jenkins Demo\localRepo" git rev-parse Head') do (SET insertsartHash=%%g)

set "textFile=C:\Users\Navneet177863\Documents\cicd-demo\ADM\automated-versioning-manager-perpare-package\version-manager.properties"

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