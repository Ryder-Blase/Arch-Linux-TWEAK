fastfetch
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias battery="upower -i /org/freedesktop/UPower/devices/battery_BAT1"
alias ultrapowersave="sudo ryzenadj --stapm-limit=9000 --fast-limit=9000 --slow-limit=9000 --power-saving "
alias powersave="sudo ryzenadj --stapm-limit=14000 --fast-limit=14000 --slow-limit=14000 --power-saving "
alias balance="sudo ryzenadj --stapm-limit=18000 --fast-limit=18000 --slow-limit=18000 --power-saving "
alias perf="sudo ryzenadj --stapm-limit=25000 --fast-limit=25000 --slow-limit=25000 --power-saving "
alias ultraperf="sudo ryzenadj --stapm-limit=45000 --fast-limit=45000 --slow-limit=45000 --power-saving  "
alias max="sudo ryzenadj --stapm-limit=999999 --fast-limit=999999 --slow-limit=999999 --max-performance  "
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/linux/.local/bin:/usr/lib/python3.13/site-packages"
alias riverwm="river -no-xwayland"
alias clear="clear && fastfetch"

