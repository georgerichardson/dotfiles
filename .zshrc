#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Shared environment variables
source ~/env.sh

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
#
# Vim

# Python
# added by Miniconda3 installer
export PATH="$HOME/miniconda3/bin:$PATH"

# tmux
alias quad_split="$HOME/scripts/quadpane-l.sh"
alias dev_split="$HOME/scripts/dev.sh"
