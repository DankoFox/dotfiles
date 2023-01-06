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

# NodeJS
set -gx PATH node_modules/.bin $PATH

#alias
alias py python
alias g git

command -qv nvim && alias vim nvim

if status is-interactive
    # Commands to run in interactive sessions can go here
  source ~/.bash_aliases
end


