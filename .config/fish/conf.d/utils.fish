# Dotfiles
alias dotfiles '/usr/bin/git --git-dir=$HOME/.dotfiles/.git --work-tree=$HOME'

# Add local binaries to the path
fish_add_path ~/.local/bin

# Neovim
alias vi  nvim
alias vim nvim
set -Ux EDITOR nvim

# lsd
alias ls   lsd
alias l    'ls -1'
alias lc   'ls -1 --classic'
alias tree 'ls --tree'
alias t    tree

# Replace htop with bottom
alias htop 'btm -b'

# Replace rm with trash-cli
alias rm 'echo Please use trm instead of rm.'
alias trm 'trash-put'
alias trmf '/usr/bin/rm -rfv'
