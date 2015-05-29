#!/bin/sh

export GPGKEY=CD246E81
export GPG_TTY=$(tty)

envfile="${HOME}/.gnome-keyring.env"

if ! pgrep -f 'gnome-keyring-daemon.*components.*gpg,ssh,secrets' > /dev/null ; then
    # A hack to clean up old instances
    killall gnome-keyring-daemon

    gnome-keyring-daemon --start --components=gpg,ssh,secrets > $envfile
fi

eval "$(cat "$envfile")"

export GPG_AGENT_INFO  # the env file does not contain the export statement
export SSH_AUTH_SOCK
export GNOME_KEYRING_CONTROL
