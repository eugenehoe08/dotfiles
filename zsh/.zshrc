# Alias

[ -f "$HOME/.config/zsh/aliases.zsh" ] && source "$HOME/.config/zsh/aliases.zsh"
# Starship
export STARSHIP_CONFIG="~/.config/starship/starship.toml"
eval "${$(starship init zsh)//Program Files/Program\ Files}"

# Activate syntax highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Disable underline
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# Activate auto suggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
