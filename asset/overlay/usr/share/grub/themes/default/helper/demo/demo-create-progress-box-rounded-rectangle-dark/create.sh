#!/usr/bin/env bash




##
## create mask.png
##

convert \
	-size 60x40 'canvas:rgba(0,0,0,0)' \
	-fill 'rgba(0,0,0,0.3)' -draw "roundrectangle 0,10,60,30,8,8"  \
	mask.png



##
## crop corner
##

convert mask.png -crop '10x40+0+0' 'PNG32:progress-box-w.png'

convert mask.png -crop '10x40+25+0' 'PNG32:progress-box-c.png'

convert mask.png -crop '10x40+50+0' 'PNG32:progress-box-e.png'

exit 0
