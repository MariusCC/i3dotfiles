#__________________________________________________________
#__________________________________________________________
###########################################################
#######    __  __                                   #######
#######   |  \/  |                                  #######
#######   | \  / | __ _ _ __  _______   ___  _ __   #######
#######   | |\/| |/ _` | '_ \|_  / _ \ / _ \| '__|  #######
#######   | |  | | (_| | | | |/ / (_) | (_) | |     #######
#######   |_|  |_|\__,_|_| |_/___\___/ \___/|_|     #######
#######       /\   | |                      | |     #######
#######      /  \  | |__  _ __ ___   ___  __| |     #######
#######     / /\ \ | '_ \| '_ ` _ \ / _ \/ _` |     #######
#######    / ____ \| | | | | | | | |  __/ (_| |     #######
#######   /_/    \_\_| |_|_| |_| |_|\___|\__,_|     #######
###########################################################
#----------------------Follow Me--------------------------#
#website: https://www.manzoorsblog.tk/                    #
#Twitter:https://twitter.com/_MANZOOR_AHMED               #
#Reddit: https://www.reddit.com/user/manzoorahmedmunawar  #
#Github: https://github.com/manzoorahmedmunawar           #
###########################################################
#__________________________________________________________
#__________________________________________________________

alias ls='ls --color=auto'
lsd &> /dev/null && alias ls='lsd --group-dirs first'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'
alias pacman='pacman --color=always'
alias scss='scss --no-cache --quiet --sourcemap=none'
alias vi='vim'
alias xclip='xclip -selection c'


export VISUAL=vim
export EDITOR=$VISUAL

export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# ------------------------------- ZSH SETTINGS --------------------------------
# ----- options -----
unsetopt NO_BEEP
unsetopt NO_MATCH
setopt AUTO_CD
setopt BEEP
setopt NOMATCH
setopt NOTIFY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt HIST_BEEP
setopt INTERACTIVE_COMMENTS
setopt MAGIC_EQUAL_SUBST

HISTFILE="$HOME/.zsh_history"
HIST_STAMPS=mm/dd/yyyy
DISABLE_UPDATE_PROMPT=true
HISTSIZE=5000
SAVEHIST=5000
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#ccc'
ZLE_RPROMPT_INDENT=0

# ----- keys -----
bindkey '^[[2~' overwrite-mode
bindkey '^[[3~' delete-char
bindkey '^[[H' beginning-of-line
bindkey '^[[1~' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[4~' end-of-line
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[3;5~' kill-word

# ----- promt -----
PS1="%F{cyan} %~ >%F{blue}> %F{white}"

# ----- plugins -----
PLUGINS_DIR=/usr/share/zsh/plugins/
source $PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGINS_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload compinit && compinit

if [[ $(tty) == /dev/pts/* ]]; then
	source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme;
else
	clear
	echo
	echo
fi

# -------------------------------- FUNCTIONS ---------------------------------
function lazygit() {
	git status .
	git add .
	git commit -m "$1"
	git push origin HEAD
}

function find() {
	if [ $# = 1 ];
	then
		command find . -iname "*$@*"
	else
		command find "$@"
	fi
}
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/.powerlevel10k/powerlevel10k.zsh-theme
source ~/.powerlevel10k/powerlevel10k.zsh-theme
neofetch
