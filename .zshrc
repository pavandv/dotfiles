source ~/.dotfiles/variables.sh

source /opt/homebrew/share/antigen/antigen.zsh

antigen init ~/.antigenrc

source ${DOT_FILES}/custom/aliases.sh
source ${DOT_FILES}/custom/completions.sh
source ${DOT_FILES}/custom/functions.sh
source ${DOT_FILES}/custom/hist_overrides.sh
# source $DOT_FILES/custom/ssh.sh

eval "$(starship init zsh)"
eval "$(zoxide init zsh --cmd cd)"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/pavandivi/.lmstudio/bin"
