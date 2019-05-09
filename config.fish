eval (direnv hook fish)
function history-merge --on-event fish_preexec
  history --save
  history --merge
end
function peco_sync_select_history
  history-merge
  peco_select_history $argv
end

function fish_user_key_bindings
  bind \c] peco_select_ghq_repository
  bind \cr 'peco_sync_select_history (commandline -b)'
end

## Alias configuration
#
# expand aliases before completing
#

alias where="command -v"
alias a="atom"
alias g="git"
alias t="tig"
alias ta="tig --all"
alias r="rails"
alias b="bundle"
alias bi="bundle install --path vendor/bundle --binstubs exec"
alias rg="rails g"
alias rgc="rails g controller"
alias rgm="rails g model"
alias rgi="rails g integration_test"
alias rgr="rails g resource"
alias rc="rails c"
alias rs="rails s"
alias e="emacsclient"
alias b="bundle"
alias be="bundle exec"
alias bu="bundle update"
alias bus="bundle update --source"
alias v="vagrant"
alias vu="vagrant up"
alias vs="vagrant status"
alias zmv='noglob zmv -W'
alias pd=popd
alias psg='ps aux | grep'
alias dm="rake db:migrate"
alias dmr="rake db:migrate:reset"
alias dr="rake db:reset"
alias ds="rake db:seed"
alias dc="docker-compose"
alias gcp="git cherry-pick"
alias gpoh="git push origin head"
alias p="git push origin head"
alias la="ls -a"
alias lf="ls -F"
alias ll="ls -la"
alias du="du -h"
alias df="df -h"
alias su="su -l"
alias git=hub
alias wd="./bin/webpack-dev-server"
alias gpoh="git push origin head"
