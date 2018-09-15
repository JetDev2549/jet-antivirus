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
@echo Please wait...

if exist C:\Users\Jet\Desktop\virustest.txt goto :detected (
    rem file exists
) else goto :undetected  (
    rem file doesn't exist
)
:noscan

@echo Your computer security might be affected if you do not scan your computer.
@echo You may close this program safely.
pause

:detected
@echo A potentially harmful piece of malware is detected on your computer
set /P c=Do you want to remove it? [Y/N]
if /I "%c%" EQU "Y" goto :quarantine
if /I "%c%" EQU "N" goto :noscan

:quarantine
@echo Deleting antivirus...
del C:\Users\Jet\Desktop\virustest.txt
@echo Your computer is secured.
pause


:undetected
@echo Your computer has no viruses!
pause

