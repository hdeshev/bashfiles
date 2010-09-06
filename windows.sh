# Windows execute helpers
alias cmd='cmd.exe /c'
alias msbuild='msbuild.exe'
alias ps1='powershell.exe'
alias powershell='powershell.exe'

# simulate the PowerShell Invoke-Item cmdlet (aliased to ii)
function ii {
    local command=$1

    if [ -d $command ]; then
        # strip trailing slash when starting directories
        command=${command%/}
    fi

    cmd "start $command"
}
