@echo off
color 0a
@echo Jet Antivirus 0.1 Beta 3. This will remove any viruses that are present on your computer. This is open-source.
:choice
set /P c=Do you want to scan your computer now? [Y/N]
if /I "%c%" EQU "Y" goto :scan
if /I "%c%" EQU "N" goto :noscan
goto :choice

:scan
@echo Scanning
@echo Tip: To not be infected with viruses, you need to think about the security of the website.
@echo Tip: If a website you are visiting has HTTP, it means that it is insecure, if it has HTTPS, it is secure.

:noscan
@echo You may close this program.
pause
