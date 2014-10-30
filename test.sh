#!/bin/sh
echo copy start
for ((i = 20244; i <= 22802; i++)) do
  rm -r ../htdocs/img_kingdom/card/a/a_$i.png
  rm -r ../htdocs/img_kingdom/card/a/a_$i.gif
done
echo copy finish
