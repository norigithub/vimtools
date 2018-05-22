call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvarsall.bat" amd64
SET Include=%Include%;C:\Program Files\Microsoft SDKs\Windows\v7.1\Include


::Define variables.
set PREFIX=D:\Program\Vim\vim81\
set CPU=AMD64
set MBYTE=yes
set IME=yes
set GIME=yes
set ICONV=yes
set CSCOPE=yes
set DEBUG=no
set PYTHON3=C:\Users\Nori\AppData\Local\Programs\Python\Python36
set DYNAMIC_PYTHON3=yes
set PYTHON3_VER=36
set FEATURES=HUGE
set TERMINAL=yes
set DIRECTX=yes
nmake -f Make_mvc.mak  GUI=no clean
nmake -f Make_mvc.mak  GUI=no

nmake -f Make_mvc.mak  GUI=yes clean
nmake -f Make_mvc.mak  GUI=yes

::Copy binaries.
copy /Y *.exe %PREFIX%
copy /Y xxd\xxd.exe %PREFIX%

::Copy dll.
copy /Y GvimExt\gvimext.dll %PREFIX%

::Copy runtimes.
xcopy /E /Y  ..\runtime\* %PREFIX%

pause
