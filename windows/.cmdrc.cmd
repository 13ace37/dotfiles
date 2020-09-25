@echo off

:: Creating Linux commands

doskey vi=vim $*
doskey alias=doskey $*
doskey cat=type $*
doskey clear=cls
doskey cp=copy $*
doskey diff=fc $*
doskey grep=find $*
doskey link=mklink $*
doskey ll=dir /Q
doskey ln=mklink $*
doskey ls=dir /B
doskey mv=move $*
doskey rm=del $*

:: handy alias

doskey e=explorer .
doskey c=cls

:: dev

echo off
set prefix=#
net session >nul 2>&1
if not %errorlevel%==0 (set prefix=$)
:cmd
title Command Promt - %cd%
for %%I in (.) do set CurrDirName=%%~nxI
if %cd% == %userprofile% (set CurrDirName=~)
set /P CMD=[%computername%] %CurrDirName% %prefix% 

%CMD%
set CMD=
goto cmd