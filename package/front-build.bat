cd /d %~dp0
cd ..
set currentDir=%cd%
cd manager-ui
call yarn build
set "DES_PATH=%currentDir%\src\main\resources\static\manager"
rmdir /s/q "%DES_PATH%"
mkdir %DES_PATH%
xcopy /s /y /e /Q "%currentDir%\manager-ui\dist\*" %DES_PATH%
pause