alias ls='exa'                                                          # ls
alias l='exa -a'                                                # list, size, type, git
alias ll='exa -lbF -all --icons'                                             # long list
alias llm='exa -lbGd --sort=modified'                            # long list, modified date sort
alias la='exa -lbhHigUmuSa --time-style=long-iso --color-scale -all -all --icons'  # all list
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --color-scale' # all + extended list
alias pac='pacman -S'   # install
alias pacu='pacman -Syu'    # update, add 'a' to the list of letters to update AUR packages if you use yaourt
alias pacr='pacman -Rs'   # remove
alias pacs='pacman -Ss'      # search
alias paci='pacman -Si'      # info
alias paclo='pacman -Qdt'    # list orphans
alias pacro='paclo && sudo pacman -Rns $(pacman -Qtdq)' # remove orphans
alias pacc='pacman -Scc'    # clean cache
alias paclf='pacman -Ql'   # list files
alias clock='peaclock' # clokc funni
alias matran='cmatrix -Br -u 7'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
