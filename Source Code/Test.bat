@Echo off
cls

Title CursorPos - Demo - www.thebateam.org
Set "Path=%Path%;%cd%;%cd%\files"
Color 0a
Mode 80,25
pause>nul
:Main
Cls
Echo.
Set newCol=15
Set newRow=15
Echo. This is the original Position of Cursor.
timeout /t 2 >nul
CursorPos
set lastPos=%errorlevel%
CursorPos=%newCol%,%newRow%
echo Message at new position. Return cursor to original position:
timeout /t 2 >nul
CursorPos %lastPos%
Echo. Returned Back to Origirnal Position.
pause>nul
exit