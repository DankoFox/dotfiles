fish_config theme choose "Rosé Pine"
set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

set -gx GEM_HOME $(ruby -e 'puts Gem.user_dir')
set -gx PATH $GEM_HOME/bin $PATH

set -x DENO_INSTALL ~/.deno
set -x PATH $DENO_INSTALL/bin:$PATH

set -x GTK_IM_MODULE fcitx
set -x QT_IM_MODULE fcitx
set -x XMODIFIERS @im=fcitx
# NodeJS
set -gx PATH node_modules/.bin $PATH

#alias
alias py python
alias g git
alias lg lazygit

alias cyclewall ~/.config/waybar/scripts/cycleWall.sh
alias selectwall ~/.config/rofi/bin/selectBG
alias gg++ "g++ -Wall -Werror -Wextra"

command -qv nvim && alias nv nvim

if status is-interactive
    # Commands to run in interactive sessions can go here
  source ~/.bash_aliases
end

function fish_greeting
     colorscript random
end

function starship_transient_prompt_func
  starship module character
end
starship init fish | source
enable_transience



thefuck --alias | source
fish_add_path /home/danko/.spicetify
