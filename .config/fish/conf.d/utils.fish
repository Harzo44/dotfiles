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
