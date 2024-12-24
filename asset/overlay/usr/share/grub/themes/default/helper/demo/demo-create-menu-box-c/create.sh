#!/usr/bin/env bash


#convert -size 10x10 'canvas:rgba(0,0,0,0)' 'PNG32:menu-box-c.png'


#convert -size 10x10 'canvas:rgba(255,255,255,0.7)' 'PNG32:menu-box-c.png'



## Not work
#convert -size 10x10 'canvas:rgba(0,0,0,0.7)' menu-box-c.png

## Work (set `PNG32:`)
convert -size 10x10 'canvas:rgba(0,0,0,0.7)' 'PNG32:menu-box-c.png'


