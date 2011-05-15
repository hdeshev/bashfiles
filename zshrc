autoload -U colors
# makes color constants available
colors

# enable colored output from ls, etc
export CLICOLOR=1

autoload -U compinit

git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    echo "[%{$fg_bold[green]%}${ref#refs/heads/}%{$reset_color%}]"
  fi
}


# expand functions in the prompt
setopt prompt_subst

# prompt
export PS1='[${SSH_CONNECTION+"%{$fg_bold[green]%}"}%{$fg_bold[blue]%}%~%{$reset_color%}] '
export RPS1='$(git_prompt_info)'

# completion
compinit

# automatically enter directories without cd
setopt auto_cd

# use vim as an editor
export EDITOR=vim
export SHELL=/usr/bin/zsh

# Emacs shortcuts
bindkey -e

# Go up a dir by hitting C-U. No more cd ../../../ madness
bindkey -s ^U " cd ..^M"

# Complete uppercase words when typing lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
setopt nocaseglob
# we also need the line below in ~/.inputrc
# set completion-ignore-case on

alias f="gvim --remote-silent"

# expand functions in the prompt
setopt prompt_subst

# ignore duplicate history entries
setopt histignoredups

setopt share_history
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history
setopt APPEND_HISTORY

export PATH=$PATH:/opt/sbt:/opt/scala/bin

source ~/.bashfiles/locations.sh
source ~/.bashfiles/linux.sh
source ~/.bashfiles/aliases.sh
