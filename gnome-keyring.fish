set -x GPGKEY CD246E81
set -x GPG_TTY (tty)

set -l envfile "$HOME/.gnome-keyring.env"

if not pgrep -f 'gnome-keyring-daemon.*components.*gpg,ssh,secrets' > /dev/null
    # A hack to clean up old instances
    killall gnome-keyring-daemon

    gnome-keyring-daemon --start --components=gpg,ssh,secrets > $envfile
end

# change var assignments to the fish syntax:
# 1. prefix with set -x
# 2. turn = to ' '
# 3. add ; at the end of each line
set var_set (cat "$envfile" |  sed -e 's/^\(.*\)/set -x \\1/' -e 's/=/ /' -e 's/\(.*\)$/\1;/')
eval $var_set
