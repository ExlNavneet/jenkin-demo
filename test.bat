@echo OFF
setlocal
 
set "searchstartHash=startHash"
FOR /F "tokens=*" %%g IN ('git rev-parse Head') do (SET insertsartHash=%%g)
 
set "textFile=C:\Users\Navneet177863\Documents\Jenkins Demo\ADM\version-manager.properties"
 
echo %searchstartHash%= %insertsartHash% > temp.tmp
 
move /Y temp.tmp "%textFile%"