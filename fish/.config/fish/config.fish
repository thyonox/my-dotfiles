
if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting # 取消欢迎消息

# starship
starship init fish | source

# banner
figlet -t -f ANSI\ Shadow "Arthur Hastings" -c | lolcat
set TERM_WIDTH (tput cols) # 获取终端宽度
set TEXT "Welcom to Fish, Have a good day!"
set TEXT_WIDTH (string length $TEXT)
set PADDING (math -s0 "floor(($TERM_WIDTH - $TEXT_WIDTH) / 2)")
printf "%*s%s\n" $PADDING "" $TEXT | lolcat  # 居中用户名
set TEXT (date "+%Y-%m-%d %H:%M:%S")
set TEXT_WIDTH (string length $TEXT)
set PADDING (math -s0 "floor(($TERM_WIDTH - $TEXT_WIDTH) / 2)")
printf "%*s%s\n" $PADDING "" $TEXT | lolcat # 居中时间
