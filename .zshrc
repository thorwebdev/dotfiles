# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/thor/.oh-my-zsh"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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

# git aliases
alias gpom="git push origin main 2> /dev/null || git push origin master"
alias xgpush="git push --set-upstream origin "
alias gl="git log"
alias ga="git add -A"
alias gc="git commit -m "
alias gd="git diff"
alias gca="git commit -a -m "
alias xgamend="git commit --amend --no-edit"
alias gb="git branch"
alias gc="git checkout "
alias gcb="git checkout -b "
alias gco="git checkout --orphan"
alias gupdatefork="git fetch upstream && git checkout master && git rebase upstream/master"
alias xgundo="git reset --soft HEAD~"
alias xgfetchb="git checkout --track origin/"
alias xgpullsub="git pull --recurse-submodules"

# yarn aliases
alias yi="yarn"
alias yd="yarn dev"
alias ys="yarn start"
alias yb="yarn build"

# npm aliases
alias ni="npm install"
alias nid="npm install --save-dev "
alias ns="npm start"
alias nd="npm run dev"

# stripe cli aliases
alias slj="stripe listen --print-json"
alias slf="stripe listen --forward-to "
alias sll="stripe listen --load-from-webhooks-api --forward-to localhost:"
alias st="stripe trigger "

## NEW TO SORT
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

## go
export GOPATH="$HOME/go"

## Aliases
### git
alias ga="git add -A"
alias gca="git commit -a -m"
alias gcm="git commit -a -m"
alias gc="git checkout"
alias gpush="git push --set-upstream origin"
alias xgpush="git push --set-upstream origin"
alias gcb="git checkout -b"
alias gcp="git cherry-pick"
alias gb="git branch"
alias gl="git log"
alias xgamend="git commit --amend --no-edit"
alias xgreset="git reset HEAD~"
alias xgrevert="git reset HEAD~"

### Python simple web server
alias ssweb="python3 -m http.server"

# pnpm
export PNPM_HOME="/Users/thorwebdev/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# Deno
export PATH="/Users/thorwebdev/.deno/bin:$PATH"
export DENO_DEPLOY_TOKEN=""

# Python
alias python="python3"
alias pip="pip3"

# Kill port 3000
alias kill3000="lsof -t -i tcp:3000 | xargs kill"

# ngrok
alias myngrok="ngrok http --domain=TBD.ngrok-free.app"

# Android
# /Users/thorwebdev/Library/Android/sdk
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home
export ANDROID_HOME=$HOME/Library/Android/sdk 
export PATH=$PATH:$ANDROID_HOME/emulator 
export PATH=$PATH:$ANDROID_HOME/platform-tools

## Ruby rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
