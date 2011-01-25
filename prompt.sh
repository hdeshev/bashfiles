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
