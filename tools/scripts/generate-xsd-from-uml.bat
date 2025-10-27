@echo off
REM ==========================================================
REM Generate FarmGML ADE XSDs from UML (via ShapeChange)
REM ==========================================================
set SHAPECHANGE_HOME="C:\ShapeChange"
set CONFIG_FILE=..\shapechange-config\farmgml_1.3_config.xml
set LOG_FILE=..\..\schemas\1.3\farmgml_generation.log

echo Generating XSDs for FarmGML ADE v1.3...
java -jar %SHAPECHANGE_HOME%\shapechange.jar -c %CONFIG_FILE% -log %LOG_FILE%

echo Done. Schemas available in /schemas/1.3/
pause
