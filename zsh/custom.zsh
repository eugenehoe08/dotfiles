# Homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export HOMEBREW_NO_AUTO_UPDATE=1

# Starship
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"
starship config palette $STARSHIP_THEME

# Activate syntax highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Zsh History substring search
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
# Bindkey for substring search

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Disable underline
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
# Change colors
# export ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=blue
# export ZSH_HIGHLIGHT_STYLES[precommand]=fg=blue
# export ZSH_HIGHLIGHT_STYLES[arg0]=fg=blue

# setup zsh History

# History file location
HISTFILE=$HOME/.config/.zsh_history

# Number of lines kept in memory and in the file
HISTSIZE=100000
SAVEHIST=100000

# Share history across all sessions
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY

# Activate autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Zoxide
eval "$(zoxide init zsh)"
