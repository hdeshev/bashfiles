export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Activate nvm
. ~/.nvm/nvm.sh

alias n='PATH=$(npm bin):$PATH'
