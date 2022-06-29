source $HOME/antigen/bin/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle jeffreytse/zsh-vi-mode

# Load the theme.
#antigen theme robbyrussell
antigen theme agnoster

# Tell Antigen that you're done.
antigen apply

# alias
alias ll="ls -l"
alias lla="ls -la"
#alias proxy="export https_proxy=http://192.168.137.73:7890 http_proxy=http://192.168.137.73:7890 all_proxy=socks5://192.168.137.73:7890"
alias proxy="export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890"

# git username email
alias githello="git config user.name liyongkang198;git config user.email liyongkang198@hellobike.com"
alias github="git config user.name licoded;git config user.email busy.li@foxmail.com"
alias gitlab="git config user.name Licoded;git config user.email busy.li@foxmail.com"
alias gitee="git config user.name Licoded;git config user.email apple_mac00@163.com"

# java terminal use English instead of Chinese
export JAVA_TOOL_OPTIONS=-Duser.language=en

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#alias for cnpm
alias cnpm="npm --registry=https://registry.npmmirror.com \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npmmirror.com/mirrors/node \
  --userconfig=$HOME/.cnpmrc"

#Python
PIP_BIN=$HOME/Library/Python/3.8/bin
export PATH=$PIP_BIN:$PATH
#Python Virtualenvs
export WORKON_HOME=$HOME/envs/python/virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source $PIP_BIN/virtualenvwrapper.sh

alias vim="nvim"
# git config --global core.editor nvim
alias zathura="/usr/local/Cellar/zathura/HEAD-72f3ce1/bin/zathura"

# ssh auto enter password
alias tl="/usr/local/bin/sshlogin_tencent"

# scp ~/Downloads/2022-05-28\ 162749.jpg root@licoded.site:/root/nodejs/computer-network-notes/content/docs/notes/01-test
