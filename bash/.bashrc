# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
  for rc in ~/.bashrc.d/*; do
    if [ -f "$rc" ]; then
      . "$rc"
    fi
  done
fi
unset rc

# starship
eval "$(starship init bash)"

# JetBrains
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"
if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

# alias
alias vim='nvim'
alias gc='git clone'

# banner
figlet -t -f DOS\ Rebel "Arthur Hastings" -c | lolcat
TERM_WIDTH=$(tput cols) # 获取终端宽度
TEXT="Welcome to Bash, Have a good day!" 
TEXT_WIDTH=$(echo -n "$TEXT" | wc -c)
PADDING=$(( (TERM_WIDTH - TEXT_WIDTH) / 2 ))
printf "%${PADDING}s%s\n" "" "$TEXT" | lolcat # 居中用户名
TEXT="$(date '+%Y-%m-%d %H:%M:%S')"
TEXT_WIDTH=$(echo -n "$TEXT" | wc -c)
PADDING=$(( (TERM_WIDTH - TEXT_WIDTH) / 2 ))
printf "%${PADDING}s%s\n" "" "$TEXT" | lolcat # 居中时间
