# Show history
alias history='fc -l 1'

alias ls='ls --color'
# List direcory contents
alias l='ls'
alias ll='ls -l'
alias g='git'

# Ubuntu/Debian only
if [ "$(which ack-grep 2>/dev/null)" ] ; then
  echo "ack found"
  alias ack='ack-grep'
fi

alias grep='grep --color=auto'
alias urails='unicorn_rails --port 3000'
