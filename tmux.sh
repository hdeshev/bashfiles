set_title() {
    printf "\033k$1\033\\"
}

ssh() {
    set_title "$1"  # Assuming I usually pass the host name as the first param
    command ssh "$@"
    set_title "zsh"
}
