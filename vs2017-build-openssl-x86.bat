rem http://charette.no-ip.com:81/programming/2015-04-09_OpenSSL/index.html

@echo off

SET ROOT=E:\PROJECT-EXTERNAL-LIB
SET RUNTIME=vc150
cd %ROOT%\src\openssl-1.0.2l

rem open vc tool
rem release -x86
perl Configure VC-WIN32 no-asm --prefix=%ROOT%\builds\openssl\%RUNTIME%\x86\release
call .\ms\do_ms.bat
nmake -f ms\nt.mak clean
nmake -f ms\nt.mak
nmake -f ms\nt.mak install

rem debug - x86
perl Configure debug-VC-WIN32 no-asm --prefix=%ROOT%\builds\openssl\%RUNTIME%\x86\debug
call .\ms\do_ms.bat
nmake -f ms\nt.mak clean
nmake -f ms\nt.mak
nmake -f ms\nt.mak install
