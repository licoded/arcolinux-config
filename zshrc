. $HOME/.config/antigen/bin/antigen.zsh

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

# 这里有个非常坑的设定
# 这个函数必须在`source ~/zsh-vi-mode.zsh`前执行
# 导致，如果你在zshrc文件中添加下面的设置后，再`source ~/.zshrc`是不生效的..
function zvm_config() {
				ZVM_VI_INSERT_ESCAPE_BINDKEY=jj
				ZVM_VI_NORMAL_ENTER_BINDKEY=nn
				#bindkey viins 'jj' zvm_exit_insert_mode
				#bindkey -s '^[OA' ''
				#bindkey -s '^[OB' ''
				#bindkey -s '^[OC' ''
				#bindkey -s '^[OD' ''
				#bindkey -r '^[OA'
				#bindkey -r '^[OB'
				#bindkey -r '^[OC'
				#bindkey -r '^[OD'
}
# define function that retrieves and runs last command
function run-again {
				# get previous history item
				zle up-history
				# confirm command
				zle accept-line
}
zle -N run-again
function run-current {
				# confirm command
				zle accept-line
}
zle -N run-current
function zvm_after_init() {
				# bind widget to Ctrl+X in viins mode
				bindkey -M viins '^X' run-again 
				# bind widget to Ctrl+X in vicmd mode
				bindkey -M vicmd '^X' run-again

				# the following breakdown when the current line is empty
				# bind widget to Ctrl+R in viins mode
				bindkey -M viins '^r' run-current 
				# bind widget to Ctrl+R in vicmd mode
				bindkey -M vicmd '^r' run-current
}
# The plugin will auto execute this zvm_after_lazy_keybindings function
#function zvm_after_lazy_keybindings() {
#        bindkey -M vicmd 'kk' accept-line
#}

# Load the theme.
antigen theme robbyrussell
#antigen theme agnoster

# Tell Antigen that you're done.
antigen apply

# alias
alias ll="ls -l"
alias lla="ls -la"
alias proxy="export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890"

# git username email
alias github="git config user.name licoded;git config user.email busy.li@foxmail.com"
alias gitlab="git config user.name Licoded;git config user.email busy.li@foxmail.com"
alias gitee="git config user.name Licoded;git config user.email apple_mac00@163.com"

# java terminal use English instead of Chinese
export JAVA_TOOL_OPTIONS=-Duser.language=en

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# alias vim="nvim"
# git config --global core.editor nvim

# code
# alias code="code-insiders"

# yarn 1.x
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

alias cnpm="npm --registry=https://registry.npmmirror.com \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npmmirror.com/mirrors/node \
--userconfig=$HOME/.cnpmrc"
