@echo off

rem iconify inputfile [outputfile]

rem https://ss64.com/nt/syntax-args.html
rem https://imagemagick.org/command-line-processing
rem https://imagemagick.org/command-line-options

set "input=%~1"

if [%~2] == [] (
    set "output=%~pn1.ico"
) else (
    set "output=%~2"
)

rem Create an empty image width x height and composite a scaled version of the input image whilst preserving the original aspect ratio.

magick ^
    ^( ^( -size  12x12  canvas:none ^( -background none -size  12x12  "%input%" -gravity center ^) -composite ^) +append ^) ^
    ^( ^( -size  16x16  canvas:none ^( -background none -size  16x16  "%input%" -gravity center ^) -composite ^) +append ^) ^
    ^( ^( -size  20x20  canvas:none ^( -background none -size  20x20  "%input%" -gravity center ^) -composite ^) +append ^) ^
    ^( ^( -size  24x24  canvas:none ^( -background none -size  24x24  "%input%" -gravity center ^) -composite ^) +append ^) ^
    ^( ^( -size  32x32  canvas:none ^( -background none -size  32x32  "%input%" -gravity center ^) -composite ^) +append ^) ^
    ^( ^( -size  48x48  canvas:none ^( -background none -size  48x48  "%input%" -gravity center ^) -composite ^) +append ^) ^
    ^( ^( -size  64x64  canvas:none ^( -background none -size  64x64  "%input%" -gravity center ^) -composite ^) +append ^) ^
    ^( ^( -size  72x72  canvas:none ^( -background none -size  72x72  "%input%" -gravity center ^) -composite ^) +append ^) ^
    ^( ^( -size 128x128 canvas:none ^( -background none -size 128x128 "%input%" -gravity center ^) -composite ^) +append ^) ^
    ^( ^( -size 256x256 canvas:none ^( -background none -size 256x256 "%input%" -gravity center ^) -composite ^) +append ^) ^
    ^( ^( -size 512x512 canvas:none ^( -background none -size 512x512 "%input%" -gravity center ^) -composite ^) +append ^) ^
    "%output%"
