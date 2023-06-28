export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="humza" # set by `omz`
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
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
plugins=(git kubectl pyenv lol minikube ssh-agent ansible istioctl gradle ubuntu systemadmin sbt scala base16-shell nvm yarn npm sudo web-search)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi


# aliases
alias l="exa -lh --icons"
alias la="exa -alh --icons"
alias m="minikube"
alias mks="minikube status"
alias mksta="minikube start"
alias mksto="minikube stop"
alias idea="idea > /dev/null"
alias vz="vim ~/.zshrc"
alias sz="source ~/.zshrc"
alias vim="nvim"
alias vi="nvim"
alias pw="cat Documents/unlocker | base64 -d | xclip -selection clipboard"
alias vi3="vim $HOME/.config/i3/config"

# Base16 Shell
#BASE16_SHELL="$HOME/.config/base16-shell/"
#[ -n "$PS1" ] && \
    #[ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        #source "$BASE16_SHELL/profile_helper.sh"

#base16_tomorrow-night-eighties-palenight
#base16_harmonic-dark
#base16_ocean

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

eval $(keychain --eval --agents ssh id_git)

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit ; compinit

source /home/greg/.zprofile
source /home/greg/.profile

cat /home/greg/Pictures/ascii/hendrix-1 | lolcat -t

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH=$PATH:/home/greg/kafka_2.13-3.4.0/bin
export PATH=$PATH:/usr/local/go/bin
unalias tldr

# opam configuration
[[ ! -r /home/greg/.opam/opam-init/init.zsh ]] || source /home/greg/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
source "/etc/profile.d/rvm.sh"

[ -f "/home/greg/.ghcup/env" ] && source "/home/greg/.ghcup/env" # ghcup-env

eval "$(starship init zsh)"

export VISUAL=vim
export EDITOR="$VISUAL"
