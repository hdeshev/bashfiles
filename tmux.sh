set_title() {
    # Do nothing if running outside tmux.
    if [ ! -z "$TMUX" ] ; then
        printf "\033k$1\033\\"
    fi
}

ssh() {
    set_title "$1"  # Assuming I usually pass the host name as the first param
    command ssh "$@"
    set_title "sh"
}
