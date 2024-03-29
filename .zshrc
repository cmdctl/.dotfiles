
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export PATH=~/.npm-global/bin:$PATH
export PATH=${PATH}:`go env GOPATH`/bin
export PATH=${PATH}:/Users/antonbozhinov/.local/bin
export PATH=${PATH}:/Users/antonbozhinov/.npm-global
# export PATH=${PATH}:$(npm root -g)
export PATH=${PATH}:/opt/homebrew/bin
export PATH=$PATH:~/.bin
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.nimble/bin
export CARGO_NET_GIT_FETCH_WITH_CLI=true

export AWS_PROFILE=personal

#==================================
# Starting scripts
# dotfiles
#==================================

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="powerlevel10k/powerlevel10k"

set -a
. ~/.zshrc.env
set +a


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13 # Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
## Example aliases
alias vim=lvim
alias v="vim ."
alias cat=bat
alias c=clear
alias s="source ~/.zshrc"
alias se="cat .env && source .env"

alias maelstrom='/Users/antonbozhinov/dev/github.com/cmdctl/java/maelstrom/maelstrom/maelstrom'

alias zshrc="vim ~/.zshrc"
alias zshrc.env="vim ~/.zshrc.env"
alias vimrc="vim ~/.vimrc"
alias adapter="cd ~/dev/github.com/ovotech/ft-fusion-adapter"
alias ovo="cd ~/dev/github.com/ovotech"
alias ct="cd ~/dev/github.com/clear-treasury"
alias ppp="cd ~/dev/github.com/clear-treasury/payments-platform-web-app"
alias app="cd ~/dev/github.com/clear-treasury/appsync"
alias dev="cd ~/dev"
alias repos="cd ~/dev/github.com/cmdctl"
alias golang="cd ~/dev/github.com/cmdctl/golang"
alias py="cd ~/dev/github.com/cmdctl/python"
alias haskell="cd ~/dev/github.com/cmdctl/haskell"
alias nodejs="cd ~/dev/github.com/cmdctl/nodejs"
alias typescript="cd ~/dev/github.com/cmdctl/typescript"
alias rust="cd ~/dev/github.com/cmdctl/rust"
alias lualang="cd ~/dev/github.com/cmdctl/lua/"
alias cmdctl="cd ~/dev/github.com/cmdctl"
alias notes="cd ~/dev/github.com/cmdctl/notes/"
alias tb="cd ~/dev/azure/tirebuyer/"



alias gg="git add -A && git commit -m"
alias push="git push origin HEAD"
alias pull="git pull origin HEAD"
alias pull-main="git pull origin main"
alias pull-dev="git pull origin dev"
alias status="git status"

alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'
alias gname='/Users/antonbozhinov/dev/github.com/cmdctl/rust/gname/target/release/gname'

alias dcu="docker-compose up -d"
alias dra='docker rm $(docker ps -a -q) -f'
alias k=kubectl

# intelij products
alias webstorm='open -na "WebStorm.app" --args "$@"'
alias goland='open -na "GoLand.app" --args "$@"'
alias pycharm='open -na "Pycharm.app" --args "$@"'

# AWS
alias cdk="npx aws-cdk"

alias chat='sh /Users/antonbozhinov/dev/github.com/cmdctl/python/chatgpt/load.sh'

export funciton search() {
	grep $1 -R --exclude-dir=node_modules .
}

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source "$HOME/.cargo/env"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Pyenv related stuff
export PYENV_ROOT="$HOME/.pyenv"

command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init -)"

# Wasmer
export WASMER_DIR="/Users/antonbozhinov/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
