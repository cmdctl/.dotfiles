# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export C_INCLUDE_PATH="`xcrun --show-sdk-path`/usr/include/ffi"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
export PATH=$PATH:/Users/antonbozhinov/Library/Python/3.8/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=~/.npm-global/bin:$PATH

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
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ovo='cd ~/dev/github.com/ovotech'
alias repos='cd ~/dev/github.com/cmdctl'
alias haskell='cd ~/dev/github.com/cmdctl/haskell'
alias golang='cd ~/dev/github.com/cmdctl/golang'
alias adapter="cd /Users/antonbozhinov/dev/github.com/ovotech/ft-fusion-adapter"

alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"

alias dcu='docker-compose up -d'
alias dra='docker rm $(docker ps -a -q) -f'

alias run-kafka='docker-compose -f /Users/antonbozhinov/dev/github.com/ovotech/kafka.yml up -d'

alias open-ports='sudo lsof -PiTCP -sTCP:LISTEN'

alias run-in-java8='docker run -it -v $(pwd):/app openjdk:8'

alias push='git push origin "$(git symbolic-ref --short HEAD)"'
alias pull='git pull origin "$(git symbolic-ref --short HEAD)"'
alias pull-master='git pull origin master'
alias pull-main='git pull origin main'
alias gs="git status"
alias gg='git add -A && git commit -m'
alias push='git push'
alias v='vim .'
alias stackghc="stack config set resolver ghc-8.10.7"

alias activate="source venv/bin/activate"
alias flutter="fvm flutter"

export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"

[[ -s "/Users/antonbozhinov/.gvm/scripts/gvm" ]] && source "/Users/antonbozhinov/.gvm/scripts/gvm"

export TEST_KAFKA_IMAGE=kymeric/cp-kafka
export TEST_KAFKA_VERSION=latest
export TEST_SCHEMA_REGISTRY_IMAGE=eugenetea/schema-registry-arm64
export TEST_WIREMOCK_IMAGE=wiremock/wiremock
export TEST_WIREMOCK_VERSION=2.32.0
export TEST_KEYCLOAK_IMAGE=wizzn/keycloak
export TEST_KEYCLOAK_VERSION=12
export JAVA_HOME=/Users/antonbozhinov/.jabba/jdk/adopt@1.11.0-11/Contents/Home


export PATH=/Library/Frameworks/UnixImageIO.framework/Programs:$PATH
export PATH=/Library/Frameworks/PROJ.framework/Programs:$PATH
export PATH=/Library/Frameworks/GEOS.framework/Programs:$PATH
export PATH=/Library/Frameworks/SQLite3.framework/Programs:$PATH
export PATH=/Library/Frameworks/GDAL.framework/Programs:$PATH
export PATH=/usr/local/pgsql/bin:$PATH
export DOCKER_DEFAULT_PLATFORM=linux/amd64
export ANDROID_SDK_ROOT='/Users/antonbozhinov/Library/Android/sdk'
export PATH="$PATH:/Users/antonbozhinov/flutter/flutter/bin"
export PATH="$PATH:/Users/antonbozhinov/.local/bin"



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/antonbozhinov/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/antonbozhinov/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/antonbozhinov/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/antonbozhinov/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


[ -s "/Users/antonbozhinov/.jabba/jabba.sh" ] && source "/Users/antonbozhinov/.jabba/jabba.sh"

[ -f "/Users/antonbozhinov/.ghcup/env" ] && source "/Users/antonbozhinov/.ghcup/env" # ghcup-env
