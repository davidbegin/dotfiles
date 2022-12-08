# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

EDITOR="nvim"

set -o vi

autoload -U colors && colors

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# TODO: Figure out a better home for this
[ -f ~/.twitch ] && . ~/.twitch
[[ ! -f ~/.config/dotfiles/.secrets ]] || source ~/.config/dotfiles/.secrets
[[ ! -f ~/.config/.linode ]] || source ~/.config/.linode

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

# Include hidden files in autocomplete:
_comp_options+=(globdots)

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

export KEYTIMEOUT=1

export PS1="; "
# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
# [[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# For Nim
export PATH=$PATH:~/.nimble/bin

# add Pulumi to the PATH
export PATH=$PATH:$HOME/.pulumi/bin

# For Rust
export PATH="$HOME/.cargo/bin:$PATH"

# For Go
export PATH="$PATH:$HOME/go/bin"
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/local/go/bin

# For Ruby
export PATH=$PATH:$HOME/.gem/ruby/2.7.0/bin

# export LUA_PATH="/home/begin/.config/nvim/lua/?.lua"
# Not sure about this
export LUA_PATH="/home/begin/code/playground/lua/share/lua/5.1/?.lua"

# Not Sure about this
[[ -s "/etc/grc.zsh" ]] && source /etc/grc.zsh

export NVIMP="~/.config/nvim"

# Make Docker Go Vroom
export DOCKER_BUILDKIT=1

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

export GOPRIVATE="github.com"

export AWS_SDK_LOAD_CONFIG=1
export MANPAGER="nvr +Man! -"

# export TERM=screen-256color-bce

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
