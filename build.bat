::Install gVim with Self-installing executable   gvim##.exe, Before execute this bat file. 
::This bat will do only update binaries and runtimes vimorig.  
::Set up compile environment.
call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\bin\x86_amd64\vcvarsx86_amd64.bat" 

::Define variables.
set PREFIX=D:\Program\Vim\vim74
set SDK_INCLUDE_DIR=C:\Program Files (x86)\Microsoft SDKs\Windows\v7.1A\Include
set WINVER=0x0500
set CPU=AMD64
set MBYTE=yes
set IME=yes
set GIME=yes
set DEBUG=no
set PYTHON=D:\Program\Python27
set DYNAMIC_PYTHON=yes
set PYTHON_VER=27
set PYTHON3=D:\Program\Python34
set DYNAMIC_PYTHON3=yes
set PYTHON3_VER=34

::Make Vim.
call nmake -f Make_mvc.mak distclean
call nmake -f Make_mvc.mak

::Copy binary.
copy /Y vim.exe %PREFIX%

::Make GVim.
set GUI=yes
call nmake -f Make_mvc.mak clean
call nmake -f Make_mvc.mak

::Copy binaries.
copy /Y gvim.exe %PREFIX%
copy /Y vimrun.exe %PREFIX%

::Copy dll.
copy /Y GvimExt\gvimext.dll %PREFIX%

::Copy runtimes.
xcopy /E /Y  ..\runtime\* %PREFIX%

pause
