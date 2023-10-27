# Browser Scroll Fix for GNU/Linux

A script that enables the Windows middle-click scrolling feature for some of the popular Chromium-based browsers on Linux (tested on Arch & Arch-based distros).

> Browsers: Brave, Google Chrome, Chromium, Edge

## Usage

> Warning: Close your browser(s) first

```shell
git clone https://github.com/devckvargas/linuxbrowserscrollfix ~/linuxbrowserscrollfix && 
cd ~/linuxbrowserscrollfix/scripts &&
./fixScroll.sh
```

> Note: if you encounter permission denied
> Close your browsers and:

```shell
sudo ~/linuxbrowserscrollfix/scripts/fixScroll.sh
```

Browsers will tell you that it's an unsupported flag, just ignore by closing the [popup warning](#popup-warning) (recommended)

### popup warning

![Popup warning](screenshot/popup.jpg)

if you don't want to see this **cd** to **linuxbrowserscrollfix/scripts** and run:

To-do add popup scripts

<!-- ```shell
./hidePopup.sh
```

revert/show the popup

```shell
./revertPopup.sh
``` -->

***If you like my work, please consider:***

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/J3J1QJINW)
