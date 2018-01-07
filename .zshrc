# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="awesomepossum"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(git)

# User configuration


export PYTHONPATH="${PYTHONPATH}:/home/gmontgomery/Projects:/home/gmontgomery/Projects/ReactivePanda"

export EDITOR='vim'
export VISUAL='vim'

export MAVEN_OPTS="-Xmx3000m"
#export JAVA_HOME="/home/gmontgomery/.userPrograms/jdk1.8.0_121"
# export MANPATH="/usr/local/man:$MANPATH"

source ~/.oh-my-zsh/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias chrome="google-chrome-stable portal.office.com &"
alias chrome-unstable="google-chrome-unstable &"
alias chrome-dev="google-chrome-dev &"
alias spotify="spotify &"
alias pidgin="pidgin &"
alias vblist="vboxmanage list vms"
alias vbh="vboxheadless -s"
alias eclimd=".eclipse/org.eclipse.platform_4.7.0_155965261_linux_gtk_x86_64/eclimd"
alias govcloudrdp="xfreerdp /f /u:graham.montgomery /d:mabiaf.com /v:odindev1.mabiaf.com"
alias update-pacman="sudo pacman -Syyu"
alias update-aur="yaourt -Syu --aur"
alias umount="sudo umount"

function update-all () {
    echo Updating Pacman
    update-pacman
    echo Updating AUR
    update-aur
    echo Updating home git
    git-home-update
    source .zshrc
}

alias startbluetooth="systemctl start bluetooth.service"
alias hidecomputer="sudo hciconfig hci0 noscan"

function bluetooth () {
    startbluetooth
    echo Bluetooth Started
    sleep 10
    hidecomputer
    echo Computer Hidden
}

function git-home-hide () {
    mv ~/.git ~/.githome
}

function git-home-show () {
    mv ~/.githome ~/.git
}

function git-home-update () {
    mv ~/.githome ~/.git
    git pull
    mv ~/.git ~/.githome
}

function git-home-add () {
    mv ~/.githome ~/.git
    git add $1
    mv ~/.git ~/.githome
}

function git-home-push () {
    mv ~/.githome ~/.git
    git commit -a
    git push
    mv ~/.git ~/.githome
}

function mountwindows () {
    sudo mount -t cifs //"$1"/"$2" /mnt/"$3" -o user="$4"
}

alias vi=vim
#export PATH =${PATH}:/home/gmontgomery/tizen-studio/*
eval $(thefuck --alias)
