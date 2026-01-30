@echo off
echo Running User Service Tests...
cd userservice
call mvnw.cmd test
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..

echo Running Product Service Tests...
cd productservice
call mvnw.cmd test
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..

echo Running Gateway Tests...
cd apigateway
call mvnw.cmd test
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..

echo Running Forecast Tests...
cd forecastservice
call pip install poetry
call poetry install
call poetry run pytest
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..

echo All tests finished successfully!
pause