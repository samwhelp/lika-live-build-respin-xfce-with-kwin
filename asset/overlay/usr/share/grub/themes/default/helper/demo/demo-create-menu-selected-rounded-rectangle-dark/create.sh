#!/usr/bin/env bash




##
## create mask.png
##

convert \
	-size 100x100 'canvas:rgba(0,0,0,0)' \
	-fill 'rgba(0,0,0,0.3)' -draw "roundrectangle 0,0,100,100,8,8"  \
	mask.png




##
## crop corner
##

convert mask.png -crop '10x10+0+0' 'PNG32:menu-selected-nw.png'

convert mask.png -crop '10x10+90+0' 'PNG32:menu-selected-ne.png'


convert mask.png -crop '10x10+0+90' 'PNG32:menu-selected-sw.png'

convert mask.png -crop '10x10+90+90' 'PNG32:menu-selected-se.png'




##
## create misc
##

convert -size 10x10 'canvas:rgba(0,0,0,0.3)' 'PNG32:menu-selected-n.png'


convert -size 10x10 'canvas:rgba(0,0,0,0.3)' 'PNG32:menu-selected-e.png'

convert -size 10x10 'canvas:rgba(0,0,0,0.3)' 'PNG32:menu-selected-c.png'

convert -size 10x10 'canvas:rgba(0,0,0,0.3)' 'PNG32:menu-selected-w.png'


convert -size 10x10 'canvas:rgba(0,0,0,0.3)' 'PNG32:menu-selected-s.png'
