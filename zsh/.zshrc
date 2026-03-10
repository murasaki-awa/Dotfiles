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
zstyle :compinstall filename '/home/user/.zshrc'

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
export PATH=$PATH:/home/user/.local/bin
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
    echo ".aliases not found. Make sure to stow it from dotfiles."
fi
# --------------------------------------------------

# --------------------------------------------------
# if zsh-syntax-highlighting.zsh exists then eval it
# --------------------------------------------------
if [ -f ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source /home/user/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
else
    echo "zsh-syntax-highlighting.zsh not found in ~/.config/zsh/zsh-syntax-highlighting/.\nPlease configure your init script properly."
fi
# --------------------------------------------------

# --------------------------------------------------
# if zsh-auto-suggestions.zsh exists then eval it
# --------------------------------------------------
if [ -f ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source /home/user/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
else
    echo "zsh-autosuggestions.zsh not found in ~/.config/zsh/zsh-autosuggestions/.\nPlease configure your init script properly."
fi
# --------------------------------------------------

eval "$(zoxide init zsh)"

# ==================================================
# EOF
# ==================================================
