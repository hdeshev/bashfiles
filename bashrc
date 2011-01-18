alias ls='ls --color'

source ~/.bashfiles/locations.sh
source ~/.bashfiles/prompt.sh

# I hope I don't have to use bash on Windows anytime soon
# source ~/.bashfiles/windows.sh

shopt -s nocaseglob
# we also need the line below in ~/.inputrc
# set completion-ignore-case on

# make screen work on Cygwin
export SHELL=/bin/bash

export EDITOR="emacsclient -n"
alias f=$EDITOR
