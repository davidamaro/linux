# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kardan"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
 CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git battery web-search encode64)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# Alias

# alias para archivos
alias -s tex=vim
alias -s py=python3
alias -s rb=ruby
alias -s docx=lowriter
alias -s pdf=llpp
# alias misceláneos
alias ..='cd ..'
alias svim='sudo vim'
alias hibernate='sudo pm-hibernate'
alias poweroff='sudo poweroff'
alias df='df -h'
alias du='du -h -c'
alias ls='ls --color=auto'
alias grep='grep --color'
alias vi='vim'
alias octave='octave -q --no-site-file'
alias poweroff='sudo poweroff'
alias reboot='sudo reboot'
alias hibernate='sudo pm-hibernate'
# alias para Pacman
alias pac='sudo /usr/bin/pacman -S'                     # Instalar paquetes
alias pack='sudo /usr/bin/packer -S'                    # Instalar paquetes (AUR)
alias pacu='sudo /usr/bin/pacman -Syu'                  # Actualizar paquetes
alias packu='sudo /usr/bin/packer -Syu --auronly'       # Actualizar paquetes (AUR)
alias pacr='sudo /usr/bin/pacman -Rds'                  # Eliminar paquetes y dependencias
alias pacs='/usr/bin/pacman -Ss'                        # Buscar paquetes
alias packs='/usr/bin/packer -Ss --auronly'             # Buscar paquetes (AUR)
alias paci='/usr/bin/pacman -Qi'                        # Información de los paquetes
alias paclo='/usr/bin/pacman -Qdt'                      # Paquetes huérfanos
alias pacc='sudo /usr/bin/pacman -Scc'                  # Eliminar paquetes residuales
alias paclf='/usr/bin/pacman -Ql'                       # Mostrar archivos de un paquete
# Eliminar los paquetes huérfanos
alias pacro="/usr/bin/pacman -Qtdq > /dev/null && sudo /usr/bin/pacman -Rs \$(/usr/bin/pacman -Qtdq | sed -e ':a;N;$!ba;s/\n/ /g')"
bindkey -s '\eu' '^Ucd ..; ls^M'
export EDITOR=/usr/bin/vim
