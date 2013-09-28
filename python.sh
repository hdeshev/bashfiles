export PIP_REQUIRE_VIRTUALENV=true
export PIP_RESPECT_VIRTUALENV=true

export WORKON_HOME="/opt/virtualenvs"
# source $(which virtualenvwrapper_lazy.sh)
# Ubuntu/Debian packaging places init in bash completion scripts
source /etc/bash_completion.d/virtualenvwrapper

alias python3='python3.3'
