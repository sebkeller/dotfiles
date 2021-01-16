export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
# Display hour in shell
RPROMPT='%D{%X}'

DISABLE_UPDATE_PROMPT="true"
HYPHEN_INSENSITIVE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='micro'
fi

# BREW
export HOMEBREW_NO_ANALYTICS=1
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

eval "$(rbenv init -)"

# ALIASES
alias "..."="cd ../.."
alias "ls"="ls -la"
alias "mkdir"="mkdir -p"
alias "m"="micro"
alias "b"="bundle"
alias "be"="bundle exec"
alias "rs"="bundle exec rails server"
alias "rc"="bundle exec rails console"
alias "rcs"="bundle exec rails console -s"
alias "s"="bundle exec rspec"
alias "migrate"="bundle exec rake db:migrate"
alias "rollback"="bundle exec rake db:rollback"
