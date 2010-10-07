# Vi key bindings
set -o vi

alias ls='ls --color'

source ~/.bashfiles/locations.sh
source ~/.bashfiles/prompt.sh
source ~/.bashfiles/windows.sh

shopt -s nocaseglob
# we also need the line below in ~/.inputrc
# set completion-ignore-case on

function fromBase64 {
    powershell "[Text.Encoding]::UTF8.GetString([Convert]::FromBase64String('$1'))"
}

# Postmark stuff
function removePostmarkServices {
    powershell "Get-Service postmark* | Stop-Service -passthru | foreach { sc.exe delete $_.Name }"
}
