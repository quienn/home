#
# ~/.bash_profile
#

export DBUS_SESSION_BUS_ADDRESS="unix:path=$XDG_RUNTIME_DIR/bus"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/gcr/ssh"

export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# $PATH
export PATH="$PATH:/home/quien/.local/share/JetBrains/Toolbox/scripts"
export PATH=$PATH:/home/quien/.spicetify

export PATH="$PATH:$HOME/.local/bin"

# aplicaciones
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export WORKON_HOME="$XDG_DATA_HOME/virtualenvs"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME"/starship.toml
export STARSHIP_CACHE="$XDG_CACHE_HOME"/starship
export RLWRAP_HOME="$XDG_DATA_HOME"/rlwrap
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export PYTHON_HISTORY=$XDG_STATE_HOME/python/history
export PYTHONPYCACHEPREFIX=$XDG_CACHE_HOME/python
export PYTHONUSERBASE=$XDG_DATA_HOME/python
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export ADB_VENDOR_KEYS="$XDG_CACHE_HOME"/adb/keys
export HISTFILE="$XDG_STATE_HOME"/bash/history
export ARDUINO_DIRECTORIES_DATA="$XDG_DATA_HOME"/arduino15
export ARDUINO_DIRECTORIES_DOWNLOADS="$XDG_DATA_HOME"/arduino15/staging

[[ -f ~/.bashrc ]] && . ~/.bashrc
