
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Activate nvm
. ~/.nvm/nvm.sh

nvm use v0.12.7 > /dev/null

alias n='PATH=$(npm bin):$PATH'
