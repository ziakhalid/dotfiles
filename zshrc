
# Functions
source ~/dotfiles/shell/functions.sh

# Aliases
source ~/dotfiles/shell/aliases.sh

# Temp Aliases
source ~/dotfiles/shell/temp_aliases.sh

# Bash profile
source ~/dotfiles/bash_profile

# Temp Paths
source ~/dotfiles/temp_path

# Temp functions
source ~/dotfiles/shell/temp_functions.sh

# Enable vi mode
bindkey -v

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#Terminal color codes
#Text color: hex: #E1D7AF RGB: 225 215 175
#Background color: hex: #262626 RGB: 38 38 38

#Set Prompt color
setopt PROMPT_SUBST
#PROMPT='%9c%{%F{green}%}$(parse_git_branch)%{%F{none}%} $ '
PROMPT='%9c%{%F{green}%}$(parse_git_branch)%{%F{none}%} ❯❯❯ '



