:: my backup batch file
:: input p0, p1, ... (source, destination)
:: set FILENAME=%~nx1

:: define source folder/file
SET SOURCE=C:\Users\OEM\bin\test.txt

:: define destination folder
::SET DEST=D:\backup
SET DEST=C:\Users\OEM\bin\backup
 

:: zip source with complete path
:: 7zip must be installed
:: help for 7zip - call 7z.exe without paramethers
"%ProgramFiles%\7-zip\7z.exe" a -t7z output.7z %SOURCE%

:: get FILENAME %~nI from SOURCE
::FOR /F %%I IN ("%SOURCE%") DO SET TARGET=%%~nxI
:: add timestamp to filename
SET TARGET=%DEST%\%FILENAME%_%DATE:~-4%-%DATE:~4,2%-%DATE:~7,2%

:: move zip file to destination and rename
MOVE output.7z %TARGET%.7z

