@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"ruby.exe" "c:/Users/faveo/My Documents/Aptana Studio 3 Workspace/invoice/vendor/bundle/ruby/1.9.1/bin/guard" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"ruby.exe" "%~dpn0" %*
