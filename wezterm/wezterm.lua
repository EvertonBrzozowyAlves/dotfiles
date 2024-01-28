local wezterm = require 'wezterm'
local config = {}

config.font = wezterm.font 'Fira Code Nerd Font'
config.color_scheme = 'Catppuccin Mocha'
config.window_decorations = "RESIZE"
config.enable_tab_bar = false
config.enable_scroll_bar = false
config.default_prog = { '/usr/bin/fish' }

return config
