
# Iconify

This convenience script acts as a wrapper for [ImageMagick](https://imagemagick.org/) in order to convert a given input image into a set of scaled images. The aspect ratio of the original is kept the contents are scaled in order to fit into the given dimensions. 
The purpose of this script is to quickly create ICO-files derived from SVG-images.


## Usage

`iconify inputfile [outputfile]`
input file: Path to the source image. Accepts any image format supported by ImageMagick.
outputfile: Optional output file name. If omitted, defaults to the input file name with it's extension replaced by ".ico".

Example:
`cmd iconify Rosen.svg`: Creates _Rosen.ico_, which contains the entire image set.
`cmd iconify Rosen.svg Rosen.png`: Creates a PNG-image file for each image in the set: _Rose-0.png_, _Rose-1.png_, etc. Great for a quick preview!


## Configuration

By default this script generates a set of square images with side lengths of 12, 16, 20, 24, 32, 48, 64, 72, 128, 256 and 512 pixels.
If you need a specific dimension, feel free to edit the script by adding or removing lines as needed.


## Legal
The script `iconify.cmd` is licensed under the MIT license.
The sample images used in `/Gallery/` remain the property of their respective owners. Each image includes a README.md file with further copyright information. 


## External Links

<https://ss64.com/nt/syntax.html>

<https://www.gnu.org/software/bash/manual/bash.html>

<https://imagemagick.org/command-line-processing>

<https://imagemagick.org/command-line-options>
