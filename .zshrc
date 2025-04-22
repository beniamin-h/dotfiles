gal() {
        printf '%s\n' $aliases[$1]
}

alias kwtest='docker-compose -p kiwihr-api-test -f docker/test.yml run --rm node npm test'
alias kwtestu='docker-compose -f docker/test.yml run --rm node npm run test-unit'
alias kwteste='docker-compose -f docker/test.yml run --rm node npm run test-e2e'
alias kwtesti='docker-compose -f docker/test.yml run --rm node npm run test-integration'
alias kwtestis='docker-compose -f docker/test.yml run --rm node npm run test-integration-separated'
alias kwup='docker-compose -f docker/development.yml up'
alias glom='gl origin master'

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=238"
bindkey -M viins '\e.' insert-last-word

unsetopt AUTO_REMOVE_SLASH

export PATH=/opt/homebrew/bin:$PATH

. ~/.linuxify

SAVEHIST=100000

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

PROMPT="╭─${current_dir}${rvm_ruby}${vcs_branch}${venv_prompt}%{$fg_bold[green]%}%*%{$reset_color%}
╰─%B${user_symbol}%b "

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
