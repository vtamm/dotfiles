alias aliases="nvim ~/dotfiles/aliases.sh"
alias sz="source ~/.zshrc && echo .zshrc sourced"
alias ls="eza -1a --icons"
alias ll="eza -la --icons --group-directories-first"
alias zshrc="nvim ~/.zshrc"

# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reloadshell="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"

# Shortcuts
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias sites="cd $HOME/Sites"

# Docker
alias dps="docker ps"
alias dcb="COMPOSE_DOCKER_CLI_BUILD=1 DOCKER_BUILDKIT=1 docker compose build"
alias dcr="docker compose run --rm"
alias dcu="docker compose up -d"
alias dcd="docker compose down"
alias dcs="docker compose stop"
alias dcsa="docker stop $(docker ps -aq)"
alias dcrcr="dcr composer require"

# Lando
alias lid="lando install-deps"
alias lud="lando update-deps"
alias lrb="lando rebuild -y"
alias lr="lando restart"
alias ldp="lando deploy-prod"
alias lds="lando deploy-staging"
alias ldbi="lando db-import"
alias ldbe="lando db-export"
alias lup="lando start"
alias lpo="lando poweroff"

ldb() {
    open mysql://wordpress:wordpress@127.0.0.1:$(lando info --service database --path "external_connection.port" --format json | tr -d '"')/wordpress
}

