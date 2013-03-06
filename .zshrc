ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

DISABLE_AUTO_UPDATE="true"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export JAVA_HOME=`/usr/libexec/java_home`

export PATH="$JAVA_HOME:$JAVA_HOME/bin:$HOME/.rbenv/bin:$HOME/.rbenv/shims:/usr/local/bin:$HOME/Applications:/Applications/Light\ Table:$HOME/.cabal/bin:/usr/local/sbin:/usr/local/share/npm/bin/:/Applications/Xcode.app/Contents/Developer/usr/bin/:$PATH"

eval "$(rbenv init -)"

export JRUBY_OPTS=--1.9

alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw "
alias macs="open -a /Applications/Emacs.app "

alias capd="bundle exec cap production deploy"

unsetopt nomatch
unsetopt correctall

source $HOME/Development/z/z.sh

export SBT_OPTS="-Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256m -Dfile.encoding=UTF-8"

alias gha='git log --graph --date=relative --all --topo-order --pretty=format:'\''%C(cyan)[%an]%Creset %C(green bold)%d%Creset %C(yellow)%h%Creset : %s %C(cyan)[%ad]%Creset'\'''

alias guake='git shortlog -s | cut -f1 | spark'

export M2_HOME=/usr/local/Cellar/maven/3.0.4/libexec

export KIJI_HOME=/Applications/kiji-bento-1.0.0-rc4/
export KIJI_MR_HOME=$KIJI_HOME
export BENTO_CLUSTER_HOME=$KIJI_HOME/cluster/
export HADOOP_HOME=$KIJI_HOME/cluster/lib/hadoop-2.0.0-mr1-cdh4.1.2
export HBASE_HOME=$KIJI_HOME/cluster/lib/hbase-0.92.1-cdh4.1.2
export PATH="${KIJI_HOME}/bin:${KIJI_HOME}/schema-shell/bin:$BENTO_CLUSTER_HOME/bin:$HADOOP_HOME/bin:$HBASE_HOME/bin:${PATH}"
