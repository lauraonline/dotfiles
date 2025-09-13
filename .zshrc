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

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
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
# pure theme
fpath+=("$HOME/dotfiles/zsh/plugins/pure")
autoload -U promptinit; promptinit
prompt pure
# making the prompt one-line (turns the newline variable into the 1001th element of psvar, the metrics array for the prompt, and prepends the $PROMPT with a whitespace). if your prompt looks off, this is probably why.
prompt_newline=$(echo -n '%1001v')
PROMPT=" $PROMPT"
