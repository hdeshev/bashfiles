shopt -s nocaseglob
# we also need the line below in ~/.inputrc
# set completion-ignore-case on

export EDITOR="vim"
alias f=$EDITOR


# enable colored output from ls, etc
export CLICOLOR=1

git_prompt_info() {
    ref=$(git symbolic-ref HEAD 2> /dev/null)
    if [[ -n $ref ]]; then
        echo "[\[\${T_BOLD}\]\[\${T_GREEN}\]${ref#refs/heads/}\[\${T_NORMAL}\]]"
    fi
}

make_prompt() {
    # call git_prompt_info every time to check git status
    PS1="\[\${T_BOLD}\]\[\${T_BLUE}\]${SSH_CONNECTION+"\[\${T_BOLD}\]\[\${T_GREEN}\]"}\w\[\${T_NORMAL}\]$(git_prompt_info)\[\${T_WHITE}\]\$\[\${T_NORMAL}\] "
}

PROMPT_COMMAND=make_prompt

# prompt

# Disable output freezing with C-s
# I like that mapped to "save" in my Vim
# stty -ixon

# Go up a dir by hitting C-U. No more cd ../../../ madness
# bind '"\C-u":" cd ..\n"'

HISTSIZE=1000
SAVEHIST=1000

CONFIG_HOME=~/.bashfiles
for conf_file in {color,tmux,locations,java,haskell,python,ruby,linux,aliases,android,nodejs} ; do
    source $CONFIG_HOME/${conf_file}.sh
done

#EC2 credentials
export EC2_PRIVATE_KEY=~/.ssh/aws-soap-key.pem
export EC2_CERT=~/.ssh/aws-soap-cer.pem

. /etc/bash_completion

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
