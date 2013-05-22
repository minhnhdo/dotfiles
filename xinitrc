if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && source "$f"
  done
  unset f
fi

eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
export SSH_AUTH_LOCK
export GPG_AGENT_INFO
export GNOME_KEYRING_CONTROL
export GNOME_KEYRING_PID

# tray
# trayer --edge top --align right --SetDockType true --SetPartialStrut true \
--expand true --width 5 --height 19 --transparent true --tint 0x000000 &
stalonetray &

# notification
dunst &

xrdb -merge $HOME/.Xresources

urxvtd -q -f -o

parcellite &
synapse -s &
nm-applet &
ibus-unikey -xdr

xsetroot -cursor_name left_ptr
exec xmonad
