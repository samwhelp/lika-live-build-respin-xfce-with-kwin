

# grub-theme-glass-remix

| Link | GitHub |
| ---- | ------ |
| [grub-theme-glass-remix](https://samwhelp.github.io/grub-theme-glass-remix/) | [GitHub](https://github.com/samwhelp/grub-theme-glass-remix) |
| [grub-theme-remix](https://samwhelp.github.io/grub-theme-remix) | [GitHub](https://github.com/samwhelp/grub-theme-remix) |
| [grub-theme-remix-select](https://samwhelp.github.io/grub-theme-remix-select/) | [GitHub](https://github.com/samwhelp/grub-theme-remix-select) |




## Subject

* [Theme Source](#theme-source)
* [Background Source](#background-source)
* [Icon Source](#icon-source)
* [Theme File](#theme-file)
* [Install](#install)
* [Apply](#apply)
* [Helper](#helper)
* [Docs](#docs)
* [Grub Theme / Glass Series](#grub-theme--glass-series)
* [Grub Theme / Image Creation](#grub-theme--image-creation)




## Theme Source

| Theme Source |
| ------------ |
| GitHub / samwhelp / [grub-theme-glass](https://github.com/samwhelp/grub-theme-glass) |




## Background Source

* [iron man](https://www.reddit.com/r/wallpaper/comments/olengo/3840x2160_iron_man/)
* [https://i.redd.it/1ai3l6g54kb71.jpg](https://i.redd.it/1ai3l6g54kb71.jpg)




## Icon Source

| Theme Source |
| ------------ |
| GitHub / vinceliuice / [grub2-themes](https://github.com/vinceliuice/grub2-themes/tree/master/assets/assets-color/icons-4k) |




## Theme File

| Theme File                       |
| -------------------------------- |
| [theme.txt](theme.txt)           |
| [background.jpg](background.jpg) |




## Install

run

``` sh

mkdir -p "./tmp"

wget -c "https://github.com/samwhelp/grub-theme-glass-remix/archive/refs/heads/main.tar.gz" -O "./tmp/grub-theme-glass-remix-main.tar.gz"


tar xf "./tmp/grub-theme-glass-remix-main.tar.gz" -C "./tmp"


sudo mkdir -p "/boot/grub/themes"

sudo cp -rf "./tmp/grub-theme-glass-remix-main/." "/boot/grub/themes/grub-theme-glass-remix"

```

or run remote script [fetch.sh](https://github.com/samwhelp/grub-theme-glass-remix/blob/main/helper/theme-installer/fetch.sh)

``` sh
bash <(curl -L 'https://raw.githubusercontent.com/samwhelp/grub-theme-glass-remix/main/helper/theme-installer/fetch.sh')
```




## Apply

edit `/etc/default/grub`

```
GRUB_BACKGROUND='/boot/grub/themes/grub-theme-glass-remix/background.jpg'
GRUB_THEME="/boot/grub/themes/grub-theme-glass-remix/theme.txt"
```

or create file `/etc/default/grub.d/theme.cfg`, run

``` sh
cat << EOF | sudo tee /etc/default/grub.d/theme.cfg
GRUB_BACKGROUND='/boot/grub/themes/grub-theme-glass-remix/background.jpg'
GRUB_THEME="/boot/grub/themes/grub-theme-glass-remix/theme.txt"

EOF
```


then run

``` sh
sudo update-grub
```

or run

``` sh
sudo grub-mkconfig -o /boot/grub/grub.cfg
```




## Helper

| Helper |
| ------ |
| [background-selector](helper/background-selector) |
| [style-selector](helper/style-selector) |
| [region-selector](helper/region-selector) |




## Docs

| Grub Docs |
| ---- |
| [Theme file format](https://www.gnu.org/software/grub/manual/grub/html_node/Theme-file-format.html) |




## Styled Boxes

| Region              | Region          | Region              |
| ------------------- | --------------- | ------------------- |
| 1. Northwest (`nw`) | 2. North (`n`)  | 3. Northeast (`ne`) |
| 4. West (`w`)       | 5. Center (`c`) | 6. East (`e`)       |
| 7. Southwest (`sw`) | 8. South (`s`)  | 9. Southeast (`se`) |

> menu-box file name

| Region               | Region              | Region               |
| -------------------- | ------------------- | -------------------- |
| 1. `menu-box-nw.png` | 2. `menu-box-n.png` | 3. `menu-box-ne.png` |
| 4. `menu-box-w.png`  | 5. `menu-box-c.png` | 6. `menu-box-e.png`  |
| 7. `menu-box-sw.png` | 8. `menu-box-s.png` | 9. `menu-box-se.png` |




## Grub Theme / Glass Series

| Base | Remix |
| ---- | ----- |
| [grub-theme-score](https://github.com/samwhelp/grub-theme-score) | [grub-theme-score-remix](https://github.com/samwhelp/grub-theme-score-remix) |
| [grub-theme-glass](https://github.com/samwhelp/grub-theme-glass) | [grub-theme-glass-remix](https://github.com/samwhelp/grub-theme-glass-remix) |
| [grub-theme-cover](https://github.com/samwhelp/grub-theme-cover) | [grub-theme-cover-remix](https://github.com/samwhelp/grub-theme-cover-remix) |
| [grub-theme-banner](https://github.com/samwhelp/grub-theme-banner) | [grub-theme-banner-remix](https://github.com/samwhelp/grub-theme-banner-remix) |
| [grub-theme-cross](https://github.com/samwhelp/grub-theme-cross) | [grub-theme-cross-remix](https://github.com/samwhelp/grub-theme-cross-remix) |




## Grub Theme / Image Creation

| Link | GitHub |
| ---- | ------ |
| [demo-grub-theme-image-creation](https://samwhelp.github.io/demo-grub-theme-image-creation/) | [GitHub](https://github.com/samwhelp/demo-grub-theme-image-creation) |
