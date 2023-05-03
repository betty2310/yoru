export ZSH="$HOME/.oh-my-zsh"

export TERM="xterm-256color"
export BROWSER="google-chrome"

# Path 
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/share/bin/:$PATH

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Go
export GOPATH="$HOME/Developer/go"
export PATH="$GOPATH/bin:$PATH"

# Latex
export PATH=/usr/local/texlive/2022/bin/universal-darwin:$PATH


# Neovim
export EDITOR="nvim"

zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

plugins=(
        fast-syntax-highlighting 
        zsh-autosuggestions
        zsh-completions
        z
        docker-compose
        docker
      )

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
alias d="docker"

eval "$(starship init zsh)"

# fnm
export PATH="/home/betty/.local/share/fnm:$PATH"
eval "`fnm env`"

export FZF_DEFAULT_OPTS=" \
--height=40% --layout=reverse --info=inline --margin=1 \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

shuf -n 1 ~/.local/share/dataset.csv | awk -F ',' '{printf "\033[31m%s: \033[0m%s - \033[33m%s\033[0m", $1, $2, $3}' | cowthink -w

eval $(thefuck --alias)
