# ==================================================
# INITIAL CONFIGURATIONS
# ==================================================

# --------------------------------------------------
# history configurations
# --------------------------------------------------
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=100000
# --------------------------------------------------

# --------------------------------------------------
# if a command doesn't exist then try to cd to it 
# --------------------------------------------------
setopt autocd nomatch
# --------------------------------------------------

# --------------------------------------------------
# no audio beeps, extendedglob, and notify
# --------------------------------------------------
unsetopt beep extendedglob notify
# --------------------------------------------------

# --------------------------------------------------
# use emacs keybinding (-v for vim)
# --------------------------------------------------
bindkey -e
# --------------------------------------------------

# --------------------------------------------------
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
# --------------------------------------------------
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# --------------------------------------------------

# --------------------------------------------------
# use custom PS1
# --------------------------------------------------
setopt prompt_subst #allow for variable substitution in the prompt

autoload -Uz vcs_info
precmd () { vcs_info } #run on each new prompt
zstyle ':vcs_info:*' formats '%s(%F{red}%b %f)'

NEWLINE=$'\n'
PS1='%F{yellow}%n@%m%f %F{green}%~%f $vcs_info_msg_0_${NEWLINE}%F{gray}❱%f '
# --------------------------------------------------


# ==================================================
# USER-DEFINED ENVIRONMENT VARIABLES
# ==================================================

# --------------------------------------------------
export PATH=$PATH:/$HOME/.local/bin
if command -v nvim &> /dev/null; then
    export EDITOR="nvim"
    export VISUAL="nvim"
    export SUDO_EDITOR="nvim"
fi
# --------------------------------------------------


# ==================================================
# USER-DEFINED SCRIPTS AND ALIASES
# ==================================================

# --------------------------------------------------
# if .aliases exist then source it
# --------------------------------------------------
if [ -f ~/.aliases ]; then
    source ~/.aliases
else
    echo ".aliases not found. Make sure to create a symlink from dotfiles."
fi
# --------------------------------------------------

# --------------------------------------------------
# if zsh-syntax-highlighting.zsh exists then eval it
# --------------------------------------------------
if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
else
    echo "zsh-syntax-highlighting.zsh not found in /usr/share/zsh-syntax-highlighting/.\nPlease install them via dnf."
fi
# --------------------------------------------------

# --------------------------------------------------
# if zsh-auto-suggestions.zsh exists then eval it
# --------------------------------------------------
if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
else
    echo "zsh-autosuggestions.zsh not found in /usr/share/zsh-autosuggestions/.\nPlease install them via dnf."
fi
# --------------------------------------------------

eval "$(zoxide init --cmd cd zsh)"

# --------------------------------------------------
# Add auto-completion features for different tools
# --------------------------------------------------
source <(docker completion zsh)
source <(talosctl completion zsh)
source <(kubectl completion zsh)
command -v flux >/dev/null && . <(flux completion zsh)
# --------------------------------------------------

# ==================================================
# EOF
# ==================================================
