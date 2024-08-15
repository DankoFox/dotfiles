alias ls='eza'                                                          # ls
alias l='eza -a'                                                # list, size, type, git
alias ll='eza -lbF -all --icons'                                             # long list
alias llm='eza -lbGd --sort=modified'                            # long list, modified date sort
alias la='eza -lbhHigUmuSa --time-style=long-iso --color-scale -all -all --icons'  # all list
alias lx='eza -lbhHigUmuSa@ --time-style=long-iso --color-scale' # all + extended list

alias pac='sudo pacman -S'   # install
alias pacu='sudo pacman -Syu'    # update, add 'a' to the list of letters to update AUR packages if you use yaourt
alias pacr='sudo pacman -Rs'   # remove
alias pacs='sudo pacman -Ss'      # search
alias paci='pacman -Si'      # info
alias paclo='pacman -Qdt'    # list orphans
alias pacro='paclo && sudo pacman -Rns $(pacman -Qtdq)' # remove orphans
alias pacc='sudo pacman -Scc'    # clean cache
alias paclf='pacman -Ql'   # list files

alias :q='exit'
alias :wq='exit'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias please='sudo'
alias aliases='vim ~/.bash_aliases && . ~/.bash_aliases'
