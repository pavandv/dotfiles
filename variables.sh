# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

export EDITOR="cursor";

export DOT_FILES=${DOT_FILES:-~/.dotfiles};
export dtf_location=$DOT_FILES;
export DOT_FILES_C="$EDITOR $DOT_FILES";

# Path to your oh-my-zsh installation.
# export ZSH="$HOME/.oh-my-zsh";
export ZSH_CUSTOM="$DOT_FILES/custom"

## User Defined Modules
export PROFILE_BROWSER="safari"

export NVM_LAZY_LOAD=true
export NVM_DIR=~/.nvm

export scmp="${HOME}/Personal"
export scmw="${HOME}/Documents/Work"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# plugins=(
#     autoupdate
#     custom-az
#     custom-git
#     custom-terraform
#     common-aliases
#     # dircycle
#     # docker
#     generic
#     git
#     # git-prompt
#     history-substring-search
#     # helm
#     jira
#     # jsontools
#     kubectl
#     npm
#     # per-directory-history
#     rust
#     ssh
#     # web-search
#     zsh-autosuggestions
#     # zsh-interactive-cd
#     yarn
#     zsh-nvm
#     zsh-syntax-highlighting # this should always be loaded at the last
# )
