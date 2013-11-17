ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

DISABLE_AUTO_UPDATE="true"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export JAVA_HOME=`/usr/libexec/java_home`
export RBENV_ROOT=/usr/local/var/rbenv

export PATH="$JAVA_HOME:$JAVA_HOME/bin:$RBENV_ROOT/bin:$RBENV_ROOT/shims:/usr/local/bin:$HOME/.cabal/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH:/Applications/Xcode.app/Contents/Developer/usr/bin:/Applications/dse/bin"

eval "$(rbenv init -)"

alias emacs="`brew --prefix emacs`/Emacs.app/Contents/MacOS/Emacs -nw "
alias macs="open -a `brew --prefix emacs`/Emacs.app "

alias be="bundle exec "
alias capd="bundle exec cap production deploy"

unsetopt nomatch
unsetopt correctall

source `brew --prefix`/etc/profile.d/z.sh

export SBT_OPTS="-Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256m -Dfile.encoding=UTF-8"

alias gha='git log --graph --date=relative --all --topo-order --pretty=format:'\''%C(cyan)[%an]%Creset %C(green bold)%d%Creset %C(yellow)%h%Creset : %s %C(cyan)[%ad]%Creset'\'''

alias guake='git shortlog -s | cut -f1 | spark'

export M2_HOME=`brew --prefix maven`/libexec

export KIJI_HOME=/Applications/kiji
export KIJI_MR_HOME=$KIJI_HOME
export BENTO_CLUSTER_HOME="${KIJI_HOME}/cluster"
export HADOOP_HOME="${BENTO_CLUSTER_HOME}/lib/hadoop-2.0.0-mr1-cdh4.3.0"
export HBASE_HOME="${BENTO_CLUSTER_HOME}/cluster/lib/hbase-0.94.6-cdh4.3.0"
export HADOOP_CONF_DIR="${HADOOP_HOME}/conf"
export HBASE_CONF_DIR="${HBASE_HOME}/conf"
export PATH="${KIJI_HOME}/bin:${KIJI_HOME}/schema-shell/bin:$BENTO_CLUSTER_HOME/bin:$HADOOP_HOME/bin:$HBASE_HOME/bin:${PATH}"

export AWS_IAM_HOME="/usr/local/opt/aws-iam-tools/jars"
export AWS_CREDENTIAL_FILE=$HOME/.aws-credentials-master

export HOMEBREW_GITHUB_API_TOKEN=`cat ~/.github_token`
