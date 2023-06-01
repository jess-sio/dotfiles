export ZSH_DISABLE_COMPFIX="true"
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/Library/Python/3.10/bin:$HOME/bin:$HOME/local/bin:$HOME/local/man:/usr/local/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/jessicamortimer/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"
HYPHEN_INSENSITIVE="true"
DISABLE_UPDATE_PROMPT="true"
ENABLE_CORRECTION="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git httpie aws gitfast history-substring-search fzf npm pip yarn zsh-interactive-cd)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

#git
alias glog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) %C(bold green)(%ar)%C(reset) %C(bold yellow)%d%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"
alias glogl="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) %C(bold green)(%ar)%C(reset) %C(bold yellow)%d%C(reset)%n''%C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"

#etc
alias ports="lsof -i -P | grep LISTEN"
alias allports="sudo lsof -i -P | grep LISTEN"

alias cht=cht.sh
function cheat {
	cht.sh $@ | moar
}

export GITHUB_PACKAGES_TOKEN=

fpath=(~/.zsh.d/ $fpath)
export PAGER=/usr/local/bin/moar

