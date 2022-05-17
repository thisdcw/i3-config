#定制fish欢迎语
function fish_greeting
#  echo 'Hello this, Welcome to fish'
  uptime
end

set -g theme_color_scheme terminal

set -g theme_date_format "+%a %m-%d %H:%M"

abbr -a vi nvim

if status is-interactive
    # Commands to run in interactive sessions can go here
end

#function fish_prompt
#    set_color purple
#    date "+%H:%M %m/%d"
#    set_color FF0
#    echo (pwd) '>'
#    set_color normal
#end

# 用c代替clear
function c
    clear $argv
end

function vi
    nvim $argv
end

function ba
	acpi $argv
end

function nb
	python -m nb_cli $argv
end

function n
    neofetch $argv
end

function ra
    ranger $argv
end

function cs
	cowsay $argv
end
