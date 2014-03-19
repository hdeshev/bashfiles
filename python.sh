export PIP_REQUIRE_VIRTUALENV=true
export PIP_RESPECT_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache

alias python3='python3.3'

export WORKON_HOME="/opt/virtualenvs"

# My own simple virtualenvwrapper workalike
workon() {
    if [ -z "$1" ] ; then
        find "$WORKON_HOME" -mindepth 1 -maxdepth 1 -type d -exec basename \{\} \;
    else
        . "$WORKON_HOME/$1/bin/activate"
    fi
}

# With its own bash completion helper
_virtualenv () {
    local cur
    # Pointer to current completion word.
    # By convention, it's named "cur" but this isn't strictly necessary.
    cur=${COMP_WORDS[COMP_CWORD]}

    local candidates=$(find "$WORKON_HOME" -mindepth 1 -maxdepth 1 -type d -name "$cur*" -exec basename \{\} \;)
    COMPREPLY=($(compgen -W "$candidates"))
    return 0
} && complete -F _virtualenv workon
