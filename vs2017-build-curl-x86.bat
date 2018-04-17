@echo off

SET RUNTIME=vc150
SET RUNTIME_VERSION=15
SET MACHINE=x86

SET DIR_ROOT=E:\PROJECT-EXTERNAL-LIB\src
SET DIR_SRC=curl-7.56.1
SET DIR_OPENSSL=E:\PROJECT-EXTERNAL-LIB\builds\openssl\%RUNTIME%\%MACHINE%
rem out_put=The build should appear in .\builds\libcurl-vcXX-xXX-release-static-ipv6-sspi-winssl

cd %DIR_ROOT%\%DIR_SRC%\winbuild

echo openssl dir: %DIR_OPENSSL%\release
echo start nmake ...

Set RTLIBCFG=static
rem nmake /f Makefile.vc mode=static VC=%RUNTIME_VERSION% WITH_DEVEL=%DIR_OPENSSL%\release WITH_SSL=static ENABLE_SSPI=no ENABLE_IDN=no ENABLE_WINSSL=no MACHINE=%MACHINE% 
nmake /f Makefile.vc mode=static VC=%RUNTIME_VERSION% WITH_DEVEL=%DIR_OPENSSL%\debug   WITH_SSL=static ENABLE_SSPI=no ENABLE_IDN=no ENABLE_WINSSL=no MACHINE=%MACHINE% DEBUG=yes
echo done.

rem Visual Studio 2015 (VC14)
rem Type “Set RTLIBCFG=static ” in to the command prompt and hit enter. This will set up the compiler to build for  /MT and /MTd.
rem
rem nmake /f Makefile.vc mode=static VC=14 WITH_DEVEL=C:\openssl_lib_x86_171101 WITH_SSL=static ENABLE_SSPI=no ENABLE_IDN=no ENABLE_WINSSL=no MACHINE=x86
rem nmake /f Makefile.vc mode=static VC=14 WITH_DEVEL=C:\openssl_lib-x86-vc140-d WITH_SSL=static ENABLE_SSPI=no ENABLE_IDN=no ENABLE_WINSSL=no MACHINE=x86 DEBUG=yes 