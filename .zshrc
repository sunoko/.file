## git shortcut
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit -m'
alias gco='git checkout'
alias gd='git diff'
alias gl='git log'
alias gs='git status -s'

## docker shortcut
alias dc='docker-compose'
alias da='docker attach'
alias dp='docker ps'
function dm() { docker exec -it $@ /bin/bash }
alias c='dc run app bin/rails c'
alias r='dc run app bin/rspec'
alias api='dc run app bin/rake ihi:batch:set_api_key'
alias rub='dc run app bin/bundle exec rubocop'
alias migrate='dc run app bin/rake db:migrate'

## zsh general settiongs
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/kazukichinone/.oh-my-zsh"
ZSH_THEME="af-magic"

## zsh plugins
plugins=(
  git
)
source $ZSH/oh-my-zsh.sh

## rbenv 
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

## shortcut commands
IRODORI=/Users/kazukichinone/RubymineProjects/irodori/skb-backend
POTEPAN=/Users/kazukichinone/RubymineProjects/potepan/potepanec
alias s='cd $IRODORI'
alias ss='mine $IRODORI'
alias p='cd $POTEPAN'
alias pp='mine $POTEPAN'
alias rebase='echo "git push origin --force-with-lease"'
alias mmm='mysql -u root -p -h 127.0.0.1 -P 13306 IHI < ~/RubymineProjects/tmp/ihi_dump.sql'

## nodebrew
NODEBREW_HOME=/usr/local/var/nodebrew/current
export NODEBREW_HOME
export NODEBREW_ROOT=/usr/local/var/nodebrew
export PATH=$PATH:$NODEBREW_HOME/bin
export GOPATH=/Users/kazukichinone/gocode
