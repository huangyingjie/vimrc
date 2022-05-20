# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/huangyingjie/.oh-my-zsh
#autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
# 指定默认VIM
export EDITOR="/opt/homebrew/bin/vim"

alias python3="/opt/homebrew/bin/python3"
alias vi="vim"
alias -s js=vi
alias -s yml=vi
alias ctags="`brew --prefix`/bin/ctags"


export NVM_DIR="/Users/huangyingjie/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bundler
  man
  dotenv
  autojump
  zsh-autosuggestions
  zsh-syntax-highlighting
  macos
  nvm
)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH=/Users/huangyingjie/.git-semantic-commits:$PATH
export PATH=$HOME/Library/Python/2.7/bin:$PATH

PATH=$HOME/node_modules/.bin:$HOME/code/fe.scripts:$HOME/application/apache-maven-3.3.9/bin:$HOME/package/sonar-runner-2.4/bin:$HOME/bin:$HOME/application/mongodb-osx-x86_64-3.2.6/bin:$HOME/package/redis-stable/src:$HOME/workspace/fe-init:$ANDROID_HOME:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH
PATH=/usr/local/sbin:$PATH
PATH=$HOME/package/emsdk-portable/clang/e1.38.6_64bit:$PATH
PATH=$HOME/package/emsdk-portable/emscripten/1.38.6:$PATH
PATH=$HOME/package/s3cmd:$PATH
PATH=$HOME/package/flutter/bin:$PATH
export npm_config_fse_binary_host_mirror=https://npm.taobao.org/mirrors/fsevents/
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true

export JAVA_HOME=`/usr/libexec/java_home`
export ANDROID_HOME="$HOME/Library/Android/sdk"
export MAVEN_OPTS='-Xmn400m -Xms1024m -Xmx1024m -Xss1m -XX:PermSize=384m -XX:MaxPermSize=384m -Dcore.zookeeper=cosalpha:9331 -Dmedis_environment=test -Dapp.port=8081'
export PHANTOMJS_CDNURL=http://npm.taobao.org/mirrors/phantomjs
#export ELECTRON_MIRROR="https://npm.taobao.org/mirrors/electron/"
export ELECTRON_MIRROR="http://localhost:8888/electron/"
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

PATH="$HOME/.cargo/bin:$PATH"
export GOPATH=$HOME/workspace/go

export EMSDK=$HOME/package/emsdk-portable
export EM_CONFIG=$HOME/.emscripten
export BINARYEN_ROOT=$HOME/package/emsdk-portable/clang/e1.38.6_64bit/binaryen
export EMSCRIPTEN=$HOME/package/emsdk-portable/emscripten/1.38.6
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup

#export NVM_DIR="/Users/huangyingjie/.nvm"
# 指定默认VIM
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# fnm
# eval "$(fnm env --multi)"

# Created by mirror-config-china
export IOJS_ORG_MIRROR=https://npm.taobao.org/mirrors/iojs
export NODIST_IOJS_MIRROR=https://npm.taobao.org/mirrors/iojs
export NVM_IOJS_ORG_MIRROR=https://npm.taobao.org/mirrors/iojs
export NVMW_IOJS_ORG_MIRROR=https://npm.taobao.org/mirrors/iojs
export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node
export NVMW_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node
export NVMW_NPM_MIRROR=https://npm.taobao.org/mirrors/npm
# End of mirror-config-china

##
# Your previous /Users/huangyingjie/.bash_profile file was backed up as /Users/huangyingjie/.bash_profile.macports-saved_2019-10-01_at_17:07:51
##

# MacPorts Installer addition on 2019-10-01_at_17:07:51: adding an appropriate PATH variable for use with MacPorts.
PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
#
# antlr classpath
export CLASSPATH=".:/usr/local/lib/antlr-4.9.1-complete.jar:$CLASSPATH"
alias antlr4='java -Xmx500M -cp "/usr/local/lib/antlr-4.9.1-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java -Xmx500M -cp "/usr/local/lib/antlr-4.9.1-complete.jar:$CLASSPATH" org.antlr.v4.gui.TestRig'

export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export PATH="/opt/miniconda2/bin:$PATH"
export PATH=$HOME/.local/bin:$PATH
export PATH="$HOME/bin/depot_tools:$PATH"
export CSC_IDENTITY_AUTO_DISCOVERY=false
export GITHUB_TOKEN="fdb93ec601ff38ffddcd9ab0a4f1e663a384da90"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi


export SDKROOT=$(xcrun --sdk macosx --show-sdk-path)

export PNPM_HOME="/Users/huangyingjie/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
