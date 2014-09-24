# avoid tput complaining when TERM is not set.
if [ ! -z "$TERM" -a "$TERM" != "dumb" ] ; then
    T_RED=$(tput setaf 1)
    T_GREEN=$(tput setaf 2)
    T_YELLOW=$(tput setaf 3)
    T_BLUE=$(tput setaf 4)
    T_MAGENTA=$(tput setaf 5)
    T_CYAN=$(tput setaf 6)
    T_WHITE=$(tput setaf 7)
    T_BOLD=$(tput bold)
    T_DIM=$(tput dim)
    T_UNDERLINE=$(tput smul)
    T_NOUNDERLINE=$(tput rmul)
    T_REVERSE=$(tput rev)
    T_NORMAL=$(tput sgr0)
fi
