# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# this paragraph taken from cachyos-zsh-config
DISABLE_MAGIC_FUNCTIONS="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
# don't save these commands to history
export HISTIGNORE="&[bf]g:clear:history:exit:q:pwd:* --help"
# new shells retain history from old shells
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/laura-alves/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# custom aliases
alias vim="nvim"
alias vi="nvim"
# custom home/.local/bin path
export PATH=$HOME/.local/bin:$PATH
