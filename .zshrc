source ~/.dotfiles/variables.sh

source /opt/homebrew/share/antigen/antigen.zsh

antigen init ~/.antigenrc

source ${0:A:h}/custom/aliases.sh
source ${0:A:h}/custom/completions.sh
source ${0:A:h}/custom/functions.sh
source ${0:A:h}/custom/hist_overrides.sh
# source $DOT_FILES/custom/ssh.sh

eval "$(starship init zsh)"
