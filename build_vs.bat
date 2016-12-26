call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" amd64
::call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\bin\vcvars32.bat"
SET Include=%Include%;C:\Program Files (x86)\Microsoft SDKs\Windows\v7.1A\Include


::Define variables.
set PREFIX=D:\Program\Vim\vim8
set CPU=AMD64
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

nmake -f Make_mvc.mak  GUI=no clean
nmake -f Make_mvc.mak  GUI=no

nmake -f Make_mvc.mak  GUI=yes clean
nmake -f Make_mvc.mak  GUI=yes

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
