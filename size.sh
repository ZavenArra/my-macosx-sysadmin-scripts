#!/bin/bash
HEIGHT=`identify -format "%h" 7-31.tif`
WIDTH=`identify -format "%w" 7-31.tif`
echo $HEIGHT
echo $WIDTH
TARGETHEIGHT=0
TARGETWIDTH=0
if [ $HEIGHT -gt  $WIDTH ]
then 
  TARGETHEIGHT=$(($HEIGHT * 3 / 2))
  TARGETWIDTH=$WIDTH
else 
  TARGETHEIGHT=$HEIGHT
  TARGETWIDTH=$(($WIDTH * 2 / 3))
fi
echo $TARGETHEIGHT
echo $TARGETWIDTH
x="x"
echo $TARGETWIDTH$x$TARGETHEIGHT
convert 7-31.tif -gravity center -crop $TARGETWIDTH$x$TARGETHEIGHT-0-0\! -background black -flatten crop_viewport.tiff
