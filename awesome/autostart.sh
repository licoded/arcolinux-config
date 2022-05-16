#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

function checkAndRun {
    makerun = $1
    echo $1 | read name, rest
    process = $2 || name
    while true
    do
      if ps ax | grep -v grep | grep $process
      then
        break
      else
        nohup $makerun &
      fi
      sleep 5
    done
}

run dex $HOME/.config/autostart/arcolinux-welcome-app.desktop
# run xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
# run xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off
# autorandr horizontal
run nm-applet
# run caffeine
run pamac-tray
run variety
run xfce4-power-manager
run blueberry-tray
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
run numlockx on
run volumeicon
# run nitrogen --restore
# you can set wallpapers in themes as well
feh --bg-fill /usr/share/backgrounds/arcolinux/arco-wallpaper.jpg &
# run applications from startup
# run firefox
# run atom
# run dropbox
# run insync start
# run spotify
# run ckb-next -b
# run discord
# run telegram-desktop

# run shutter
process=shutter
makerun="shutter --min_at_startup"
while true
do
    if ps ax | grep -v grep | grep $process
    then
        break
    else
        nohup $makerun &
    fi
    sleep 5
done

# run qv2ray # replace by clash@lic and auto-clash service
run fcitx-autostart
run utools
run warpd
# run syncthing # It's not very useful, replace by scrcpy 直接拖拽

variety -p  && wal -i $(cat $HOME/.config/variety/wallpaper/wallpaper.jpg.txt)&

# primary display
# xrandr --output DP-1 --auto --output eDP-1 --off
xrandr --output DP-1 --auto --output eDP-1 --auto
# xrandr | awk -F ' ' '$2 == "connected" {print $1}' | head -1 | xargs -i xrandr --output {} --primary

# AN2Linux
# systemctl --user restart an2linux.service # auto start by service

# systemctl
# `systemctl status` only show the last few rows
# If you want to see more details about the scripts status
# use `journalctl -u <service_name>` instead
