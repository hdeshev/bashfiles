# Windows execute helpers
alias cmd='cmd.exe /c'
alias msbuild='msbuild.exe'
alias ps1='powershell.exe'
alias powershell='powershell.exe'

alias emacs='emacs.bat'

# simulate the PowerShell Invoke-Item cmdlet (aliased to ii)
function ii {
    local command=$1

    if [ -d $command ]; then
        command=`fixDirPath "$command"`
    fi

    cmd "start $command"
}

# remove trailing slash and turn slashes to backslashes
function fixDirPath {
    local result="$(echo -n "$1" | sed -e "{
        s/\(.*\)\/$/\\1/g
        s/\//\\\\/g
    }")"
    echo "$result"
}

