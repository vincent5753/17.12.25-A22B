@ECHO OFF
@color 02
@title A22B
REM VER-V1
echo �W�h
echo ============================================================
echo =     1.�ƭȬ�4��¼Ʀr                                    =
echo =     2.��1���(�d���)����0(�]�����ټg���X��)             =
echo =     3.�Ʀr������                                         =
echo =     4.ENJOY A BATCH FROM VINC                            =
echo =     �ҥH....��ӨS�H���a��C�C���a                       =
echo ============================================================
echo.

REM ���ϥΪ̿�J4���
:ENTER
set /p str=��J�|��Ʀr:
IF [%str:~0,1%]==[0] goto ERROR
IF [%str:~4,1%]==[] goto SEPARATE
REM �W�L4���
:ERROR
echo ��J���Ȥ��ųW�h
goto ENTER

REM �4���
:SEPARATE
set str01=%str:~0,1%
set str02=%str:~1,1%
set str03=%str:~2,1%
set str04=%str:~3,1%

REM �T�{��1�쬰�¼Ʀr
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
echo ��J���Ȥ��ųW�h
goto ENTER

REM �T�{��2�쬰�¼Ʀr
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
echo ��J���Ȥ��ųW�h
goto ENTER

REM �T�{��3�쬰�¼Ʀr
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
echo ��J���Ȥ��ųW�h
goto ENTER

REM �T�{��4�쬰�¼Ʀr
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
echo ��J���Ȥ��ųW�h
goto ENTER

REM �ˬd���ƼƦr
REM ���P�᭱�Ʀr���Ƥ~���L
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


REM ����4���
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

REM ���s��J
:ENTER-AFTRND
set /p str=��J�|��Ʀr:
IF [%str:~0,1%]==[0] goto ERROR-AFTRND
IF [%str:~4,1%]==[] goto SEPARATE-AFTRND
:ERROR-AFTRND
echo ��J���Ȥ��ųW�h
goto ENTER-AFTRND
REM �4���
:SEPARATE-AFTRND
set str01=%str:~0,1%
set str02=%str:~1,1%
set str03=%str:~2,1%
set str04=%str:~3,1%
goto COMPARE

:END
echo ���߳q��
pause