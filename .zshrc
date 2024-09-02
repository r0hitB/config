# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

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


alias zshupd="source ~/.zshrc"
alias zsh="nvim ~/.zshrc"

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias home='cd ~'

# Git shortcuts
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'
alias gd='git diff'

# System information
alias meminfo='free -m -l -t'
alias cpuinfo='lscpu'
alias df='df -h'

# Network
alias myip='curl http://ipecho.net/plain; echo'
alias ports='netstat -tulanp'

# Misc utilities
alias h='history'
alias j='jobs -l'
alias now='date +"%T"'
alias nowdate='date +"%d-%m-%Y"'
alias wget='wget -c'  # Resume download if possible
alias c='clear'
alias http='httpie'
alias ff='yazi'

# Safety nets
alias rm='rm -i'  # Prompt before removing
alias cp='cp -i'  # Prompt before overwriting
alias mv='mv -i'  # Prompt before overwriting

# Quick edit of config files
alias vimrc='nvim ~/.vimrc'
alias bashrc='nvim ~/.bashrc'
alias i3config='nvim ~/.config/i3/config'

# Docker shortcuts
alias dps='docker ps'
alias dimg='docker images'
alias dex='docker exec -it'

# Python virtual environment
alias ve='python3 -m venv ./venv'
alias va='source ./venv/bin/activate'

# System control aliases
alias reboot='sudo systemctl reboot'
alias poweroff='sudo systemctl poweroff'
alias shutdown='sudo systemctl poweroff'
alias suspend='sudo systemctl suspend'
alias hibernate='sudo systemctl hibernate'
alias sleep='sudo systemctl suspend-then-hibernate'

# Service control
alias start='sudo systemctl start'
alias stop='sudo systemctl stop'
alias restart='sudo systemctl restart'
alias status='systemctl status'
alias enable='sudo systemctl enable'
alias disable='sudo systemctl disable'

# System state info
alias list-units='systemctl list-units'
alias failed-units='systemctl --failed'
alias running-services='systemctl list-units --type=service --state=running'

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups


# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
	archlinux
	zsh-autosuggestions 
	zsh-syntax-highlighting
	zsh-history-substring-search
	you-should-use
	zsh-autopair 
	#autoswitch_virtualenv
	fast-syntax-highlighting 
	zsh-abbr 
	forgit 
	zsh-interactive-cd
  python
  docker)

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
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#TheFuck
eval $(thefuck --alias)

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh



# Enhanced cd with fzf
fzf_cd() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}

# Telescope-like file search
telescope_search() {
  local file
  file=$(fzf --preview 'bat --style=numbers --color=always {}' --preview-window up:60%:hidden:wrap --bind '?:toggle-preview')
  [ -n "$file" ] && ${EDITOR:-nvim} "$file"
}

# Livegrep-like search
livegrep_search() {
  local result
  result=$(rg --color=always --line-number --no-heading --smart-case "${*:-}" | fzf --ansi --delimiter : --preview 'bat --style=numbers --color=always --highlight-line {2} {1}' --preview-window up,60%,border-bottom,+{2}+3/3)
  [ -n "$result" ] && ${EDITOR:-nvim} $(echo "$result" | awk -F: '{print $1}') +$(echo "$result" | awk -F: '{print $2}')
}



# Key bindings
bindkey -s '^f' 'fzf_cd\n'  # Ctrl+F for fzf-enhanced cd
# bindkey -s '^t' 'telescope_search\n'  # Ctrl+T for telescope-like search
bindkey -s '^g' 'livegrep_search\n'  # Ctrl+G for livegrep-like search

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ---- Eza (better ls) -----
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"


# -- Use fd instead of fzf --

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}


# --- setup fzf theme ---
fg="#CBE0F0"
bg="#011628"
bg_highlight="#143652"
purple="#B388FF"
blue="#06BCE4"
cyan="#2CF9ED"

export FZF_DEFAULT_OPTS="--color=fg:${fg},bg:${bg},hl:${purple},fg+:${fg},bg+:${bg_highlight},hl+:${purple},info:${blue},prompt:${cyan},pointer:${cyan},marker:${cyan},spinner:${cyan},header:${cyan}"

show_file_or_dir_preview="if [ -d {} ]; then eza --tree --color=always {} | head -200; else bat -n --color=always --line-range :500 {}; fi"

export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo ${}'"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "$show_file_or_dir_preview" "$@" ;;
  esac
}
export PATH=$HOME/.local/bin:$PATH

runpy() {
  if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python -m venv venv
  fi
  source venv/bin/activate
  if [ ! -f "requirements.txt" ]; then
    echo "Installing numpy and matplotlib..."
    pip install numpy matplotlib
    pip freeze > requirements.txt
  else
    pip install -r requirements.txt
  fi
  python "$1"
  deactivate
}

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

PATH="/home/bagga/.local/share/solana/install/active_release/bin:$PATH"
