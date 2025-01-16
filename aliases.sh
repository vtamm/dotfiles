alias aliases="nvim ~/dotfiles/aliases.sh"
alias vz="nvim ~/.zshrc"
alias sz="source ~/.zshrc && echo .zshrc sourced"
alias l="eza -a"
alias ll="eza -la --smart-group"
alias zshrc="nvim ~/.zshrc"

# Apps
alias lg="lazygit"

# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reloadshell="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"


alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias sites="cd $HOME/Sites"

# Docker
alias dps="docker ps"
alias dcr="docker compose run --rm"
alias dcu="docker compose up -d"
alias dcd="docker compose down"
alias dcs="docker compose stop"
alias dcsa="docker stop $(docker ps -aq)"
alias dcrcr="dcr composer require"

# Lando
alias li="lando install-deps"
alias lu="lando update-deps"
alias lrb="lando rebuild -y"
alias lr="lando restart"
alias ldp="lando deploy-prod"
alias lds="lando deploy-staging"
alias lup="lando start"
alias lpo="lando poweroff"

ldb() {
    DATABASE=$(lando info --service database --path "creds.database" --format json | tr -d '"')
    EXTERNAL_PORT=$(lando info --service database --path "external_connection.port" --format json | tr -d '"')
    USER=$(lando info --service database --path "creds.user" --format json | tr -d '"')
    PASSWORD=$(lando info --service database --path "creds.password" --format json | tr -d '"')
    open mysql://$USER:$PASSWORD@127.0.0.1:$EXTERNAL_PORT/$DATABASE
}

# Homebrew
alias bb="brew bundle --file ~/dotfiles/Brewfile"

