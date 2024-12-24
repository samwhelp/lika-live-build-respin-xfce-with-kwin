#!/usr/bin/env bash




##
## create mask.png
##

convert \
	-size 200x200 'canvas:rgba(0,0,0,0)' \
	-fill 'rgba(255,255,255,0.1)' -draw "roundrectangle 0,0,200,200,16,16"  \
	mask.png




##
## crop corner
##

convert mask.png -crop '20x20+0+0' 'PNG32:menu-box-nw.png'

convert mask.png -crop '20x20+180+0' 'PNG32:menu-box-ne.png'


convert mask.png -crop '20x20+0+180' 'PNG32:menu-box-sw.png'

convert mask.png -crop '20x20+180+180' 'PNG32:menu-box-se.png'




##
## create misc
##

convert -size 20x20 'canvas:rgba(255,255,255,0.1)' 'PNG32:menu-box-n.png'


convert -size 20x20 'canvas:rgba(255,255,255,0.1)' 'PNG32:menu-box-e.png'

convert -size 20x20 'canvas:rgba(255,255,255,0.1)' 'PNG32:menu-box-c.png'

convert -size 20x20 'canvas:rgba(255,255,255,0.1)' 'PNG32:menu-box-w.png'


convert -size 20x20 'canvas:rgba(255,255,255,0.1)' 'PNG32:menu-box-s.png'
