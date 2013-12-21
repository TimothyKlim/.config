ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

DISABLE_AUTO_UPDATE="true"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export JAVA_HOME=`/usr/libexec/java_home`
export RBENV_ROOT=/usr/local/var/rbenv

export PATH="$JAVA_HOME:$JAVA_HOME/bin:$RBENV_ROOT/bin:$RBENV_ROOT/shims:/usr/local/bin:$HOME/.cabal/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH:/Applications/Xcode.app/Contents/Developer/usr/bin:/Applications/dse/bin"

eval "$(rbenv init -)"

eval "$(direnv hook zsh)"

alias emacs="`brew --prefix emacs`/Emacs.app/Contents/MacOS/Emacs -nw "
alias macs="open -a `brew --prefix emacs`/Emacs.app "

alias be="bundle exec "

unsetopt nomatch
unsetopt correctall

source `brew --prefix`/etc/profile.d/z.sh

export SBT_OPTS="-Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256m -Dfile.encoding=UTF-8"

alias gha='git log --graph --date=relative --all --topo-order --pretty=format:'\''%C(cyan)[%an]%Creset %C(green bold)%d%Creset %C(yellow)%h%Creset : %s %C(cyan)[%ad]%Creset'\'''

alias guake='git shortlog -s | cut -f1 | spark'

export M2_HOME=`brew --prefix maven`/libexec

export HIVE_HOME=/Applications/hive
export KIJI_HOME=/Applications/kiji

alias cloud-env="source $KIJI_HOME/bin/kiji-env.sh;source /Applications/spark/bin/spark-config.sh;source /Applications/dse/bin/dse-env.sh;export PATH=/Applications/spark:/Applications/spark/bin:/Applications/hive/bin:/Applications/opscenter/bin:/Applications/opscenter/agent/bin:$PATH"

alias cloud-start="cloud-env;bento start;nohup sudo dse cassandra -t >> /dev/null 2>>/dev/null &;nohup sudo datastax-agent -f >>/dev/null 2>>/dev/null &;nohup opscenter -f >> /dev/null 2>>/dev/null"

export AWS_IAM_HOME="/usr/local/opt/aws-iam-tools/jars"
export AWS_CREDENTIAL_FILE=$HOME/.aws-credentials-master

export HOMEBREW_GITHUB_API_TOKEN=`cat ~/.github_token`
