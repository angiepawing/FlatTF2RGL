@echo off
:: starting
echo preparing folder structure
mkdir FlatTF2RGL > nul 2> nul
move cfg FlatTF2RGL\ > nul 2> nul
move materials FlatTF2RGL\ > nul 2> nul
move models FlatTF2RGL\ > nul 2> nul
move scripts FlatTF2RGL\ > nul 2> nul

:: generating readme
copy dev\ref\vpk.txt FlatTF2RGL\readme.txt > nul 2> nul
echo.>> FlatTF2RGL\readme.txt
echo.>> FlatTF2RGL\readme.txt
echo Current Options:>> FlatTF2RGL\readme.txt
type dev\current_options.txt >> FlatTF2RGL\readme.txt

:: creating vpk
echo creating vpk
..\..\..\bin\vpk.exe FlatTF2RGL > nul 2> nul

:: moving vpk files
echo moving vpk files
move FlatTF2RGL_*.vpk ..

:: regenerating folder structure
echo regenerating folder structure
del FlatTF2RGL\readme.txt > nul 2> nul
move FlatTF2RGL\cfg .\ > nul 2> nul
move FlatTF2RGL\materials .\ > nul 2> nul
move FlatTF2RGL\models .\ > nul 2> nul
move FlatTF2RGL\scripts .\ > nul 2> nul
rmdir FlatTF2RGL > nul 2> nul

:: done
echo done
pause