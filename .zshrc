
# PATH Settings
export PATH="$PATH:/Users/nate/flutter/bin"
export PATH="$PATH:/Users/nate/go/bin"
export PATH="$HOME/.pyenv/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# pyenv
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"

# Google Cloud SDK
[ -f '/Users/nate/google-cloud-sdk/path.zsh.inc' ] && . '/Users/nate/google-cloud-sdk/path.zsh.inc'
[ -f '/Users/nate/google-cloud-sdk/completion.zsh.inc' ] && . '/Users/nate/google-cloud-sdk/completion.zsh.inc'

# Shell History Configuration
export HISTSIZE=10000                 # Keep history size to a reasonable number
export HISTFILESIZE=20000              # File size should be sufficient for history needs
export HISTFILE=~/.zsh_history         # Store history in home directory
setopt APPEND_HISTORY                  # Append history rather than overwriting
setopt SHARE_HISTORY                   # Share history between sessions
setopt INC_APPEND_HISTORY              # Write history immediately to file
setopt HIST_IGNORE_ALL_DUPS            # Remove duplicates in history
setopt HIST_IGNORE_SPACE               # Ignore commands that start with a space

# Ensure no command echoes history unexpectedly
precmd() { fc -R; }

# End of .zshrc
