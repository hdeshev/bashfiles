# Windows execute helpers
alias cmd='cmd.exe /c'
alias msbuild='msbuild.exe'
alias ps1='powershell.exe'
alias powershell='powershell.exe'

# simulate the PowerShell Invoke-Item cmdlet (aliased to ii)
function ii {
    cmd "start $1"
}
