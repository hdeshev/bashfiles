autoload -U colors
# makes color constants available
colors

# enable colored output from ls, etc
export CLICOLOR=1


git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    echo "[%{$fg_bold[green]%}${ref#refs/heads/}%{$reset_color%}]"
  fi
}


# expand functions in the prompt
setopt prompt_subst

# prompt
export PS1='${SSH_CONNECTION+"%{$fg_bold[green]%}"}%{$fg_bold[blue]%}%~%{$reset_color%} '
export RPROMPT='$(git_prompt_info)'




# automatically enter directories without cd
setopt auto_cd

# use vim as an editor
export EDITOR=vim
export SHELL=/usr/bin/zsh

# Emacs shortcuts
bindkey -e

# Go up a dir by hitting C-U. No more cd ../../../ madness
bindkey -s ^U " cd ..^M"

# completion
autoload -U compinit
compinit
# Complete uppercase words when typing lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

#ignore case when globbing
setopt nocaseglob
# bring back bash-style noglobs like 'rake sometask[param]' and 'find -name *scala'
setopt no_nomatch

# Sane backward-word and forward-word that doesn't skip *()=, etc
export WORDCHARS=''

alias f="gvim --remote-silent"

# ignore duplicate history entries
setopt histignoredups

setopt share_history
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history
setopt APPEND_HISTORY

export M2_HOME=/opt/apache-maven

export PATH=$PATH:/opt/sbt:/opt/scala/bin
export PATH=$PATH:/opt/jruby/bin:/opt/play:/var/lib/gems/1.8/gems/jekyll-0.10.0/bin
export PATH=$PATH:$M2_HOME/bin

case $TERM in
    *xterm*)
        precmd () {print -Pn "\e]0;%n@%M: %~\a"}
        ;;
esac

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

source ~/.bashfiles/locations.sh
source ~/.bashfiles/linux.sh
source ~/.bashfiles/aliases.sh
