export ZSH="$HOME/.oh-my-zsh"

export TERM="xterm-256color"
export BROWSER="google-chrome"

# Path 
export PATH=$HOME/.local/bin:$PATH

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Go
export GOPATH="$HOME/Developer/go"
export PATH="$GOPATH/bin:$PATH"

# Latex
export PATH=/usr/local/texlive/2022/bin/universal-darwin:$PATH


# Neovim
export EDITOR="nvim"


plugins=(
        fast-syntax-highlighting 
        zsh-autosuggestions
        )
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source $ZSH/oh-my-zsh.sh


alias vi="nvim"
alias vim="nvim"
alias g="git"
alias ..="cd .."
alias cat="bat"
alias grep="rg"
alias ~="cd ~"
alias lsi='logo-ls'
alias ls='exa' 
alias l='exa -lbF' 
alias ll='exa -la --icons' 
alias llm='ll --sort=modified' 
alias la='exa -lbhHigUmuSa --icons' 
alias lx='exa -lbhHigUmuSa@' 
alias tree='exa --tree' 
alias :q='exit' 
alias cl="clear"
alias celar="clear"
alias dc="docker-compose"

eval "$(starship init zsh)"

# fnm
export PATH="/home/betty/.local/share/fnm:$PATH"
eval "`fnm env`"
