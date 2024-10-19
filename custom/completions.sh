#### Enable command completions

    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

    # GCLOUD_COMPLETION_PATH="/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
    # [[ ! -f $GCLOUD_COMPLETION_PATH ]] || source $GCLOUD_COMPLETION_PATH;

    # autoload bashcompinit && bashcompinit
    # source /usr/local/etc/bash_completion.d/az

    # autoload -U +X bashcompinit && bashcompinit
    complete -o nospace -C "$(brew --prefix)/bin/terraform" terraform

    if type "gcloud" >&/dev/null; then
        source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
        source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"
    fi;

####


### Completion styling
    zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
    zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
###
