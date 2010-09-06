# Vi key bindings
set -o vi

alias ls='ls --color'

# location shortcuts
alias pm='cd d:/deshev/work/postmark-dev/postmark-delivery'
alias pmtw='cd d:/deshev/work/postmark-dev/postmark-delivery/src/Tests/Web.Tests'
alias tmp='cd d:/tmp'
alias n2='cd d:/deshev/work/n2dev'
alias work='cd d:/deshev/work'
alias oss='cd d:/deshev/work/OpenSourcework'

# Windows execute helpers
alias cmd='cmd.exe /c'
alias msbuild='msbuild.exe'
alias ps1='powershell.exe'
alias powershell='powershell.exe'

# prompt with current dir truncated with nice ellipsis
function prompt_command {
  #   How many characters of the $PWD should be kept
  local pwd_length=25
  if [ $(echo -n $PWD | wc -c | tr -d " ") -gt $pwd_length ]
    then promptPWD="$(echo -n $PWD | sed -e "s/.*\(.\{$pwd_length\}\)/...\1/")"
    else promptPWD="$(echo -n $PWD)"
  fi
}
PROMPT_COMMAND=prompt_command
export PROMPT_COMMAND
PS1='[$promptPWD]$ '

function fromBase64 {
    powershell "[Text.Encoding]::UTF8.GetString([Convert]::FromBase64String('$1'))"
}

# Postmark stuff
function removePostmarkServices {
    powershell "Get-Service postmark* | Stop-Service -passthru | foreach { sc.exe delete $_.Name }"
}
