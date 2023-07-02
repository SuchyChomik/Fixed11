::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcCmLP2O7o1cgzO3o5P6IsnEOQOMtbI7ZlLGWJYA=
::fBE1pAF6MU+EWHreyHcjLQlHcCmLP2O7o1cgzO3o5P6IsnEKQPU6eYTeyPqLOOVz
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDZdTwyDmYmGIroL5uT07u6UnkQeW+xxcYzUug==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF25
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIWIQNRSETTbQs=
::eg0/rx1wNQPfEVWB+kM9LVsJDAKLJG6+V+QV5vvv7uaLp19TUfo6GA==
::fBEirQZwNQPfEVWB+kM9LVsJDAKLJG6+V+QV5vvv7uaLp19TUfo6GA==
::cRolqwZ3JBvQF1fEqQIWIQNRSETTbSuTCKYI6eT36vjn
::dhA7uBVwLU+EWHKN7U1wCxRGXAuQPX+zCbt8
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATE100gMQldSwyWfCO5T/U34fH0r8mIsF0SRuMrcYDVug==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDZdTwyDmYmGIrAP4/z0/9aBq1UYULNucYHIzrWCLOUBpED8cPY=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Fixed 11 by Kiyo
echo x ==================== x
echo    Fixed 11 Installer
echo x ==================== x
echo.
echo Do you want to install Fixed 11? [Y/N]
choice /c YN
if %errorlevel%==1 goto yes
if %errorlevel%==2 goto no

:no
exit

:yes
echo Adding Registry Tweaks...
Reg.exe add "HKCU\SOFTWARE\CLASSES\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{e2bf9676-5f8f-435c-97eb-11607a5bedf7}" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell\Update\Packages" /v "UndockingDisabled" /t REG_DWORD /d "1" /f
echo.
start explorer shell:::{05d7b0f4-2121-4eff-bf6b-ed3f69b894d9}
echo Click "Turn system icons on or off" and enable everything
echo except "Meet Now".
echo.
echo When you are finished, press any key.
pause>nul
cd %b2eincfilepath%
start startab.exe
echo Now go ahead and finish the installation of StartAllBack
echo and choose your start menu.
echo.
echo When finished, press any key.
pause>nul
echo.
taskkill /f /im explorer.exe
timeout 1 >nul
start explorer.exe
echo Do you want to install Winaereo Tweaker? (Optional)
choice /c YN
if %errorlevel%==1 goto yes2
if %errorlevel%==2 goto no2

:no2
echo.
echo All Done! Close this window or press any key to exit.
pause>nul
exit

:yes2
cd %b2eincfilepath%
start wtweaker.exe
echo.
echo All Done! Close this window or press any key to exit.
pause>nul
exit