


@echo off
setlocal

set "sourceDir=.\"
set "outputDir=%sourceDir%\output3gp"

if not exist "%outputDir%" mkdir "%outputDir%"

for %%f in ("%sourceDir%inputMp4\*.mp4") do (
    echo Converting file : "%%f"
    ffmpeg -loglevel panic -y -i "%%f" -s 320x240 -vcodec mpeg4 -acodec aac -ac 1 -ar 8000 -r 25 -ab 12200 -aspect 4:3 -b:v 640k "%outputDir%\%%~nf.3gp"

)

echo Conversion complete.
pause
