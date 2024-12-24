

# demo-create-menu-box-c


## Link

| Link |
| ------- |
| [https://imagemagick.org/Usage/canvas/](https://imagemagick.org/Usage/canvas/) |
| [https://imagemagick.org/Usage/files/](https://imagemagick.org/Usage/files/) |
| [https://imagemagick.org/Usage/formats/](https://imagemagick.org/Usage/formats/) |
| [https://www.imagemagick.org/script/color.php](https://www.imagemagick.org/script/color.php) |
| [https://www.imagemagick.org/script/formats.php](https://www.imagemagick.org/script/formats.php) |
| [https://www.imagemagick.org/discourse-server/viewtopic.php?t=24060](https://www.imagemagick.org/discourse-server/viewtopic.php?t=24060) |
| [https://www.imagemagick.org/discourse-server/viewtopic.php?t=18300](https://www.imagemagick.org/discourse-server/viewtopic.php?t=18300) |


``` sh
 convert -size 200x100 xc:none tmp.png
```

============================================================

``` sh
convert -size 200x100 xc:"rgba(0,0,0,0)" PNG32:tmp.png
```
or


``` sh
convert -size 200x100 xc:"rgba(0,0,0,0)" -type truecolormatte PNG32:tmp.png
```

see if that helps before upgrading.
