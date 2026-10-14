@echo off
echo ==========================================================
echo  Stopping Apache Tomcat...
echo ==========================================================

if "%JAVA_HOME%"=="" set "JAVA_HOME=C:\Users\VIRENDRA SINGH\.vscode\oracleJdk-25"
if "%CATALINA_HOME%"=="" set "CATALINA_HOME=C:\apache-tomcat-10.1.60"

call "%CATALINA_HOME%\bin\shutdown.bat"

echo Tomcat stopped.
pause
