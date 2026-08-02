# ==============================================================================
# ~/.profile
# ==============================================================================

# XDG directories:
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"

# Set path:
export PATH="$HOME/.local/bin:/usr/bin:/usr/sbin:/usr/games"

# Util specific variables:
export DIRCOLORS="${XDG_CONFIG_HOME}/dircolors"
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export NETHACKOPTIONS="@${XDG_CONFIG_HOME}/nethackrc"

# If running bash, include bashrc:
BASHRC="${XDG_CONFIG_HOME}/bash/bashrc"
if [ -n "$BASH_VERSION" -a -f "$BASHRC" ]; then
	. "$BASHRC"
fi
