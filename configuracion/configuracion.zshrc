# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
eval "$(oh-my-posh init zsh)"
eval "$(oh-my-posh init zsh --config /home/glow/.poshthemes/transparent.omp.json)"

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
plugins=(
	git
	zsh-autosuggestions
	fast-syntax-highlighting
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias ohmyzsh="mate ~/.oh-my-zsh"
# ---zsh configuracion---
alias zc="nano ~/.zshrc"
alias sz="source ~/.zshrc"
# ---Directorios---
alias des="cd ~/Descargas"
alias doc="cd ~/Documentos"
alias img="cd ~/Imágenes"
alias vid="cd ~/Vídeos"

# ---terminal---
alias l="lsd -l"
alias ll="lsd -la"
alias hd="history -c"
alias up="sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y"
alias aut="sudo apt autoremove"
alias cl="sudo apt autoclean && sudo apt autoremove"
alias mkt="mkdir content exploit nmap"
alias mkd="mkdir"
# ---limpieza de cabezales---
alias lcab="sudo escputil -c -u -r /dev/usb/lp0"
# ---transmission---
alias torrent="transmission-cli"
alias tsf ="transmission-show"
#	example "transmission-cli file.torrent"
#	example "transmission-cli "mangetlink.magnet" "
#	example "transmission-show my-file.torrent"
# ---mega---
alias ml="mega-ls"
alias mt="mega-tree"
alias mll="mega-ls -lah"
alias mmv="mega-mv"
alias mli="mega-login"
alias mlo="mega-logout"
alias mcd="mega-cd"
alias mrm="mega-rm"
alias mup="mega-put -c"
alias mmk="mega-mkdir"
alias mex="mega-export"
alias mim="mega-import"
alias mwi="mega-whoami"
alias mdo="mega-get"
alias mpw="mega-pwd"
alias mca="mega-cat"
# ---Git---
alias gst="git status"
alias gpl="git pull"
alias gph="git push"
alias gc="git clone"
# ---firejail---
alias j="firejail"
alias jf="firejail firefox"
alias jz="firejail zathura"
alias jv="firejail vlc"
# ---zathura pdf---
alias pdf="zathura"
# 	Ctl + r "modo obscuro"
#	gg "pagina principal"
#	#pag shift + g "te lleva al numero de pagina"
# ---bat---
alias bat="batcat"
# ---metadata---
# identify "image.jpg"
# exiftool "image.png"
#	example "exiftool -all= imagen.jpg"
#	example to add gps "exiftool -exif:gpslatitude=»21.30″ -exif:gpslatituderef=S -exif:gpslongitude=»165.30″ -exif:gpslongituderef=E  image.png"
# ---ytmdl---
alias yt="ytmdl"
#	example ytmdl "name_song"
#	example ytmdl "name_song" by "author"
# ---trash-cli---
#	trash-put           trash files and directories.
#	trash-empty         empty the trashcan(s).
#	trash-list          list trashed files.
#	trash-restore       restore a trashed file.
#	trash-rm	     	remove individual files from the trashcan.
alias tsh="trash"
alias tshl="trash-list"
alias tshe="trash-empty"
alias tshr="trash-restore"
alias tshm="trash-rm"
# ---gh eco---
# gh auth login
# gh auth logout
alias gli="gh auth login"
alias glo="gh auth logout"
alias ge="gh eco"
# ---cbonsai---
alias bon="cbonsai -l -i"
# ---office---
alias of="libreoffice7.3"
# ---feh---
# cambiar fondo---
alias fondo="feh --bg-fill"
alias fondos="feh --bg-fill --no-fehbg --randomize ~/Imágenes/wall/*"
# ---VS Code---
alias vsc="code"
# ---picom---
alias picom="nano ~/.config/picom/picom.conf"
# ---bspwm---
alias bspwm="nano ~/.config/bspwm/bspwmrc"
# ---sxhkd---
alias sxh="nano ~/.config/sxhkd/sxhkdrc"
# ---polybar---
alias bar="nano ~/.config/polybar/launch.sh"
alias conf="cd ~/.config/polybar/"
# ---gnome screenshot---
alias sc="gnome-screenshot -d 1"
# ---redshift---
alias night="redshift -l 1.0:1.0 -t 2600:3600 -g 1.0"
# ---typon---
alias typ="typon"
# ---bluetoothctl---
alias blu="bluetoothctl"
# ---pdftk---
#  set password to pdf file poner entre comillas sipmles si la contraseña tiene caracteres especiales '!"#$%&/()=?'
# "pdftk input.pdf output output.pdf owner_pw abc123 user_pw def456"
# remove password to pdf file
# "pdftk inputname.pdf input_pw 123457 output outputname.pdf "
# ---pipes---
alias pipes="/usr/local/bin/./pipes.sh"
# ---xammp---
alias xampsta="sudo /opt/lampp/lampp start"
alias xampsto="sudo /opt/lampp/lampp stop"
alias xampres="sudo /opt/lampp/lampp restart"
# ---gnuchess---
alias chess="gnuchess"
# ---metasploitframework---
alias msf="msfconsole"
# ---social engineering toolkit---
alias SET="setoolkit"
# ---qr---
# qr "texto" > archivo.png
# ---speedtest---
alias speed="speedtest-cli"
# ---rename---
# sudo apt-get install rename
# rename 's/oldname/newname/g' file
# ---lsblk---
# alias dev="lsblk"
# ---neofetch---
alias neo="neofetch"
# ---mount---
alias hdd="mount /dev/sdb3 /media/glow/"
# ---ppa---
alias ppa="cd /etc/apt/sources.list.d"
# ---date---
alias today='date +"%A, %B %-d, %Y"'
