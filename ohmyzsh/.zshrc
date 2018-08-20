# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(
  git
  yarn
  brew
  last-working-dir
  node
  osx
  docker
)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

wtf()
{
    if [ -z "$1" ]; then
       echo -e 'Usage: wtf [regex] ([path])'
    else
       if [ -z "$2" ]; then
           baseDir="."
       else
           baseDir="$2"
       fi
       grep -HIRn "$1" "$baseDir" 2>/dev/null | more
    fi;
}

sym()
{
    if [ -z "$1" ]; then
        echo -e 'Usage: sym [folder]'
    else
        ls -lR $1 | grep ^l
    fi;
}
#glog()
#{
#    git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --
#}
