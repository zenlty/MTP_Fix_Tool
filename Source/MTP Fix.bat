::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::                                                    :::
:::           This Tool has coded by Barish            :::
:::                 GSMTURKEY.NET                      :::
:::                                                    :::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
:START
chcp 857 
cls
title MTP FIX TOOL - BARISMIZRAKLI 
cd "%~dp0"
if exist "%~dp0\bin" SET PATH=%PATH%;"%~dp0\bin"
::------------------------------------------------------------------------------------------------------------------
::Colors
set "[LGREEN]=\033[92m"
set "[LCYAN]=\033[96m"
set "[LRED]=\033[91m"
set "[LMAGENTA]=\033[95m"
set "[LYELLOW]=\033[93m"
set "[WHITE]=\033[0m"
::------------------------------------------------------------------------------------------------------------------
:MAIN_TR
chcp 857 
cls
echo( 
echo ******************************************************************
echo *                %[LCYAN]%       MTP BAGLANTI MODU FIX%[WHITE]%                    * | cmdcolor
echo *  %[LYELLOW]%              TOOL BARIS MIZRAKLI TARAFINDAN KODLANDI       %[WHITE]%  * | cmdcolor
echo *  %[LRED]%                          -----------                       %[WHITE]%  * | cmdcolor
echo *                     %[LGREEN]%      GSMTURKEY.NET%[WHITE]%                        * | cmdcolor
echo *             %[LMAGENTA]%            MTP HAS BEEN FIXED %[WHITE]%                    * | cmdcolor
echo ******************************************************************
echo %[LCYAN]%  __________________   ________________________     %[WHITE]% | cmdcolor
echo %[LCYAN]%  [__)[__][__) ! (__   !\/! !   _/ [__)[__]!_/ !    ! %[WHITE]% | cmdcolor
echo %[LCYAN]%  [__)!  !!  \_!____)  !  !_!__/___!  \!  !!  \!__  ! %[WHITE]% | cmdcolor
echo.
echo %[LRED]%  YAPACAGINIZ ISLEMLERDEN DOGACAK HASARLARDAN SIZ SORUMLUSUNUZ.%[WHITE]% | cmdcolor
echo(
echo  TOOL'U YONETICI OLARAK CALISTIRMAYI UNUTMAYINIZ.
echo(	
echo  %[LMAGENTA]%1. YOL%[LRED]%| cmdcolor 

echo  %[LYELLOW]%2. YOL%[LRED]%%[WHITE]% | cmdcolor 

echo  %[LRED]%3. YOL%[LRED]%%[WHITE]% | cmdcolor 


echo ******************************************************************
echo                          %[LCYAN]%GSMTURKEY.NET%[WHITE]%                     | cmdcolor

echo   %[LRED]%                          BARIS MIZRAKLI                   %[WHITE]%   | cmdcolor
set /p option=Seciminizi yazin [1-3] ve ENTER'a basin: || set option="0"
if /I %option%==1 goto birinciyol
if /I %option%==2 goto ikinciyol
if /I %option%==3 goto ucuncuyol
goto MAIN_TR
:birinciyol
@echo off
cls
title MTP FIX TOOL - BIRINCI YOL
pnputil -i -a C:\Windows\Inf\wpdmtp.inf
pause
echo  %[LRED]%Test Ediniz.%[LRED]%%[WHITE]% | cmdcolor 
goto MAIN_TR
:ikinciyol
@echo off
cls
title MTP FIX TOOL - BIRINCI YOL
RUNDLL32.EXE SETUPAPI.DLL,InstallHinfSection DefaultInstall 132 C:\Windows\Inf\wpdmtp.inf
pause
echo  %[LRED]%Test Ediniz.%[LRED]%%[WHITE]% | cmdcolor 
goto MAIN_TR
:ucuncuyol
@echo off
cls
title MTP FIX TOOL - BIRINCI YOL
InstallHinfSection(NULL,NULL,TEXT("DefaultInstall 132 C:\Windows\Inf\wpdmtp.inf"),0);
pause
echo  %[LRED]%Test Ediniz.%[LRED]%%[WHITE]% | cmdcolor 
goto MAIN_TR








