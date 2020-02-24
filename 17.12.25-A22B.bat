@ECHO OFF
@color 02
@title A22B
REM VER-V1
echo 砏玥
echo ============================================================
echo =     1.计4计                                    =
echo =     2.材1计(计)ぃ0(и临糶ぃㄓ)             =
echo =     3.计ぃ狡                                         =
echo =     4.ENJOY A BATCH FROM VINC                            =
echo =     ┮....т⊿よ篊篊                       =
echo ============================================================
echo.

REM 琵ㄏノ块4计
:ENTER
set /p str=块计:
IF [%str:~0,1%]==[0] goto ERROR
IF [%str:~4,1%]==[] goto SEPARATE
REM 禬筁4计
:ERROR
echo 块ぃ才砏玥
goto ENTER

REM ╊Θ4计
:SEPARATE
set str01=%str:~0,1%
set str02=%str:~1,1%
set str03=%str:~2,1%
set str04=%str:~3,1%

REM 絋粄材1计
:STR01VALVRF
if /i %str01%==0 goto STR02VALVRF
if /i %str01%==1 goto STR02VALVRF
if /i %str01%==2 goto STR02VALVRF
if /i %str01%==3 goto STR02VALVRF
if /i %str01%==4 goto STR02VALVRF
if /i %str01%==5 goto STR02VALVRF
if /i %str01%==6 goto STR02VALVRF
if /i %str01%==7 goto STR02VALVRF
if /i %str01%==8 goto STR02VALVRF
if /i %str01%==9 goto STR02VALVRF
echo 块ぃ才砏玥
goto ENTER

REM 絋粄材2计
:STR02VALVRF
if /i %str02%==0 goto STR03VALVRF
if /i %str02%==1 goto STR03VALVRF
if /i %str02%==2 goto STR03VALVRF
if /i %str02%==3 goto STR03VALVRF
if /i %str02%==4 goto STR03VALVRF
if /i %str02%==5 goto STR03VALVRF
if /i %str02%==6 goto STR03VALVRF
if /i %str02%==7 goto STR03VALVRF
if /i %str02%==8 goto STR03VALVRF
if /i %str02%==9 goto STR03VALVRF
echo 块ぃ才砏玥
goto ENTER

REM 絋粄材3计
:STR03VALVRF
if /i %str03%==0 goto STR04VALVRF
if /i %str03%==1 goto STR04VALVRF
if /i %str03%==2 goto STR04VALVRF
if /i %str03%==3 goto STR04VALVRF
if /i %str03%==4 goto STR04VALVRF
if /i %str03%==5 goto STR04VALVRF
if /i %str03%==6 goto STR04VALVRF
if /i %str03%==7 goto STR04VALVRF
if /i %str03%==8 goto STR04VALVRF
if /i %str03%==9 goto STR04VALVRF
echo 块ぃ才砏玥
goto ENTER

REM 絋粄材4计
:STR04VALVRF
if /i %str04%==0 goto RODCHK
if /i %str04%==1 goto RODCHK
if /i %str04%==2 goto RODCHK
if /i %str04%==3 goto RODCHK
if /i %str04%==4 goto RODCHK
if /i %str04%==5 goto RODCHK
if /i %str04%==6 goto RODCHK
if /i %str04%==7 goto RODCHK
if /i %str04%==8 goto RODCHK
if /i %str04%==9 goto RODCHK
echo 块ぃ才砏玥
goto ENTER

REM 浪琩狡计
REM ぃ籔计狡倒筁
:RODCHK
:RODCHKSTR01
if /i %str01% EQU %str02% goto ERROR
if /i %str01% EQU %str03% goto ERROR
if /i %str01% EQU %str04% goto ERROR
goto RODCHKSTR02
:RODCHKSTR02
if /i %str02% EQU %str03% goto ERROR
if /i %str02% EQU %str04% goto ERROR
goto RODCHKSTR03
:RODCHKSTR03
if /i %str03% EQU %str01% goto ERROR
if /i %str03% EQU %str04% goto ERROR
goto RANDOMNUM


REM 玻ネ4计
:RANDOMNUM
set /a NUM=%random%
if /i %NUM% GTR 9999 goto :RANDOMNUM
if /i %NUM% LSS 1000 goto :RANDOMNUM

:SEPARATE
set N01=%NUM:~0,1%
set N02=%NUM:~1,1%
set N03=%NUM:~2,1%
set N04=%NUM:~3,1%

:RODCHKSTR01
if /i %N01% EQU %N02% goto RANDOMNUM
if /i %N01% EQU %N03% goto RANDOMNUM
if /i %N01% EQU %N04% goto RANDOMNUM
goto RODCHKSTR02

:RODCHKSTR02
if /i %N02% EQU %N03% goto RANDOMNUM
if /i %N02% EQU %N04% goto RANDOMNUM
goto RODCHKSTR03

:RODCHKSTR03
if /i %N03% EQU %N04% goto RANDOMNUM
goto COMPARE

:COMPARE
set /a A=0
set /a B=0
REM CPR-D1
if /i %STR01% EQU %N01% set /a A=%A%+1
if /i %STR01% EQU %N02% set /a B=%B%+1
if /i %STR01% EQU %N03% set /a B=%B%+1
if /i %STR01% EQU %N04% set /a B=%B%+1
REM CPR-D2
if /i %STR02% EQU %N01% set /a B=%B%+1
if /i %STR02% EQU %N02% set /a A=%A%+1
if /i %STR02% EQU %N03% set /a B=%B%+1
if /i %STR02% EQU %N04% set /a B=%B%+1
REM CPR-D3
if /i %STR03% EQU %N01% set /a B=%B%+1
if /i %STR03% EQU %N02% set /a B=%B%+1
if /i %STR03% EQU %N03% set /a A=%A%+1
if /i %STR03% EQU %N04% set /a B=%B%+1
:REM CPR-D4
if /i %STR04% EQU %N01% set /a B=%B%+1
if /i %STR04% EQU %N02% set /a B=%B%+1
if /i %STR04% EQU %N03% set /a B=%B%+1
if /i %STR04% EQU %N04% set /a A=%A%+1
:SHOW
echo %A%A%B%B
if /i %A% EQU 4 goto END 

REM 穝块
:ENTER-AFTRND
set /p str=块计:
IF [%str:~0,1%]==[0] goto ERROR-AFTRND
IF [%str:~4,1%]==[] goto SEPARATE-AFTRND
:ERROR-AFTRND
echo 块ぃ才砏玥
goto ENTER-AFTRND
REM ╊Θ4计
:SEPARATE-AFTRND
set str01=%str:~0,1%
set str02=%str:~1,1%
set str03=%str:~2,1%
set str04=%str:~3,1%
goto COMPARE

:END
echo 尺硄闽
pause