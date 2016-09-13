::Install gVim with Self-installing executable   gvim##.exe, Before execute this bat file. 
::This bat will do only update binaries and runtimes vimorig.  
::Set up compile environment.

::Define variables.
set PREFIX=D:\Program\Vim\vim8
echo off
set PATH=D:\program\mingw-w64\x86_64-5.1.0-win32-seh-rt_v4-rev0\mingw64\bin;%PATH%
set MBYTE=yes
set IME=yes
set GIME=yes
set ICONV=yes
set CSCOPE=yes
set DEBUG=no
set PYTHON=D:\Program\Python27
set DYNAMIC_PYTHON=yes
set PYTHON_VER=27
set PYTHON3=D:\Program\Python35
set DYNAMIC_PYTHON3=yes
set PYTHON3_VER=35

call mingw32-make -f Make_ming.mak ARCH=x86-64 GUI=no clean
call mingw32-make -f Make_ming.mak ARCH=x86-64 GUI=no

call mingw32-make -f Make_ming.mak ARCH=x86-64 GUI=yes clean
call mingw32-make -f Make_ming.mak ARCH=x86-64 GUI=yes

::Copy binaries.
copy /Y vim.exe %PREFIX%
copy /Y gvim.exe %PREFIX%
copy /Y vimrun.exe %PREFIX%
copy /Y xxd\xxd.exe %PREFIX%

::Copy dll.
copy /Y GvimExt\gvimext.dll %PREFIX%

::Copy runtimes.
xcopy /E /Y  ..\runtime\* %PREFIX%

pause
