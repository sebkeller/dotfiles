export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8

ZSH_THEME="robbyrussell"
# Display hour in shell
RPROMPT='%*'

ENABLE_CORRECTION="true"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

eval "$(mise activate zsh)"

plugins=(zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# ALIASES
alias "mkdir"="mkdir -p"
alias "ls"="ls -lah"
alias "v"="vim"
alias "b"="bundle"
alias "be"="bundle exec"
alias "rs"="bundle exec rails server"
alias "rc"="bundle exec rails console"
alias "rcs"="bundle exec rails console -s"
alias "s"="bundle exec rspec"
alias "t"="bundle exec rails test"
alias "migrate"="bundle exec rails db:migrate"
alias "rollback"="bundle exec rails db:rollback"
alias "uncommit"="git reset --soft HEAD^"
