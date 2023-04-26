# Variables
## XDG directories
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export PATH="${PATH}:${HOME}/.local/bin"

## History
export HISTFILE="${HOME}/.zhistory"
export HISTSIZE=5000
export SAVEHIST=5000

## Env variables
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less

## Wayland / Sway
export _JAVA_AWT_WM_NONREPARENTING=1
export MOZ_ENABLE_WAYLAND=1

#-------------------------------------------------------------------
# Launch Sway
[ "$(tty)" = "/dev/tty1" ] && exec sway