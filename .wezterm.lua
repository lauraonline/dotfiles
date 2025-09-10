-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.window_decorations = "RESIZE" -- remove titlebar
config.use_fancy_tab_bar = false -- use compact tab bar
config.window_padding = { -- remove padding
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

-- theme settings
config.color_scheme = 'Catppuccin Latte'

-- Finally, return the configuration to wezterm:
return config
