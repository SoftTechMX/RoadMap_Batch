@echo off
echo EJEMPLO 1
set message=Ejemplo de Variables
echo %message%
pause

:: Agrega /A para indicar que es una variable de tipo numerica
echo EJEMPLO 2
SET /A A = 5 
SET /A B = 10 
SET /A C = %A% + %B% 
echo La suma de %A% + %B% es %C%
pause

:: SCOPE
:: Las variables pueden ser locales o globales, por defecto las variables son globales 
:: en toda la sesion del prompt pero podemos usar SETLOCAL para indicar que las variables 
:: sean locales al scope del script.
set globalvar = 5
SETLOCAL
set var = 13145
set /A var = %var% + 5
echo %var%
echo %globalvar%
ENDLOCAL