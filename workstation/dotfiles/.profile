# Configure my preferred editor
VISUAL=nano; export VISUAL EDITOR=nano; export EDITOR

# Setting PATH for Python 3.6
# The original version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Set git autocomplete and conveniences
source ~/git-completion.bash
alias gco='git co'
alias gci='git ci'
alias grb='git rb'
