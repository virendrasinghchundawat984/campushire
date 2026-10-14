@echo off
echo ==========================================================
echo  Starting Apache Tomcat for Campus Placement System...
echo ==========================================================

if "%JAVA_HOME%"=="" set "JAVA_HOME=C:\Users\VIRENDRA SINGH\.vscode\oracleJdk-25"
if "%CATALINA_HOME%"=="" set "CATALINA_HOME=C:\apache-tomcat-10.1.60"

call "%CATALINA_HOME%\bin\startup.bat"

echo.
echo Tomcat is starting in a separate window!
echo Once started, open your browser at:
echo   http://localhost:8080/placement/
echo.
pause
