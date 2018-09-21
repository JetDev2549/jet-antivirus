@echo off
color 0a
@echo Jet VirusDefend v0.1.2 beta
:choice
set /P c=This version is unstable! Some features might be missing! Do you want to scan now? [Y/N]
if /I "%c%" EQU "Y" goto :scan
if /I "%c%" EQU "N" goto :noscan
goto :choice

:scan
@echo Scanning
@echo Tip: To not be infected with viruses, you need to think about the security of the website.
@echo Tip: If a website you are visiting has HTTP, it means that it is insecure, if it has HTTPS, it is secure.
@echo Tip: 
@echo Please wait...
if exist C:\Users\Jet\Desktop\virustest.txt goto :detected (
    rem file exists
) else goto :undetected  (
    rem file doesn't exist
)





:noscan
@echo Your computer security might be affected if you do not scan your computer.
set /P c=Do you really want to quit this application? Your computer might be unsafe! [Y/N]
if /I "%c%" EQU "Y" goto :scan
if /I "%c%" EQU "N" pause
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

