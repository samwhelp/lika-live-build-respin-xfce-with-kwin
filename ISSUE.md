

# Issue


## Default cursor theme

> [~/.icons/default/index.theme](./asset/overlay/etc/skel/.icons/default/index.theme)

``` ini

[Icon Theme]
Name=Default
Comment=Default cursor theme
Inherits=breeze_cursors,Breeze
Size=24

```

> `Inherits=breeze_cursors,Breeze` add `Brezee` fallback, fix mouse right click on desktop.


* `breeze_cursors` means `/usr/share/icons/breeze_cursors`
* `Breeze` means `/usr/share/icons/breeze_cursors/index.theme: Name=Breeze`


run

``` sh
grep '^Name=' /usr/share/icons/breeze_cursors/index.theme
```

show

```
Name=Breeze
```
