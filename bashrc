shopt -s nocaseglob
# we also need the line below in ~/.inputrc
# set completion-ignore-case on

export EDITOR="vim"
alias f=$EDITOR


# enable colored output from ls, etc
export CLICOLOR=1

# prompt
export PS1='${SSH_CONNECTION+"%{$fg_bold[green]%}"}%{$fg_bold[blue]%}%~%{$reset_color%} '

# Disable output freesing with C-s
# I like that mapped to "save" in my Vim
stty -ixon

# Go up a dir by hitting C-U. No more cd ../../../ madness
bind '"\C-u":" cd ..\n"'

HISTSIZE=1000
SAVEHIST=1000

CONFIG_HOME=~/.bashfiles
for conf_file in {prompt,tmux,locations,java,haskell,python,ruby,linux,aliases,gpg-agent} ; do
    source $CONFIG_HOME/${conf_file}.sh
done

#EC2 credentials
export EC2_PRIVATE_KEY=~/.ssh/aws-soap-key.pem
export EC2_CERT=~/.ssh/aws-soap-cer.pem
