alias ls='ls --color'
alias ack='ack-grep -i'

source ~/.bashfiles/locations.sh
source ~/.bashfiles/prompt.sh

# I hope I don't have to use bash on Windows anytime soon
# source ~/.bashfiles/windows.sh
source ~/.bashfiles/linux.sh

shopt -s nocaseglob
# we also need the line below in ~/.inputrc
# set completion-ignore-case on

# make screen work on Cygwin
export SHELL=/bin/bash

export EDITOR="emacsclient -n"
alias f=$EDITOR
