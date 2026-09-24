source ~/.dotfiles/variables.sh

DISABLE_AUTO_TITLE="true"
export GHOSTTY_SHELL_INTEGRATION_NO_TITLE="1"
if [[ -n "${GHOSTTY_SHELL_FEATURES:-}" ]]; then
  ghostty_shell_features=("${(@s:,:)GHOSTTY_SHELL_FEATURES}")
  ghostty_shell_features=("${(@)ghostty_shell_features:#title}")
  export GHOSTTY_SHELL_FEATURES="${(j:,:)ghostty_shell_features}"
  unset ghostty_shell_features
fi

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
export PATH="/opt/homebrew/opt/rustup/bin:$PATH"

# Keep terminal tab titles to the current directory name only.
autoload -Uz add-zsh-hook
set_current_dir_tab_title() {
  local title="${PWD:t}"
  print -Pn "\e]0;${title:q}\a"
  print -Pn "\e]1;${title:q}\a"
  print -Pn "\e]2;${title:q}\a"
}

wrap_ghostty_title_hooks() {
  if (( $+functions[_ghostty_precmd] )) && (( ! $+functions[_ghostty_precmd_without_tab_title] )); then
    functions[_ghostty_precmd_without_tab_title]="${functions[_ghostty_precmd]}"
    _ghostty_precmd() {
      _ghostty_precmd_without_tab_title "$@"
      set_current_dir_tab_title
    }
  fi

  if (( $+functions[_ghostty_report_pwd] )) && (( ! $+functions[_ghostty_report_pwd_without_tab_title] )); then
    functions[_ghostty_report_pwd_without_tab_title]="${functions[_ghostty_report_pwd]}"
    _ghostty_report_pwd() {
      _ghostty_report_pwd_without_tab_title "$@"
      set_current_dir_tab_title
    }
  fi
}

set_current_dir_tab_title_precmd() {
  wrap_ghostty_title_hooks
  set_current_dir_tab_title
}

add-zsh-hook -d precmd set_current_dir_tab_title 2>/dev/null
add-zsh-hook -d precmd set_current_dir_tab_title_precmd 2>/dev/null
add-zsh-hook -d chpwd set_current_dir_tab_title 2>/dev/null
add-zsh-hook precmd set_current_dir_tab_title_precmd
add-zsh-hook chpwd set_current_dir_tab_title


