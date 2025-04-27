-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
--config.color_scheme = '3024 (dark) (terminal.sexy)'

config.color_scheme = "Tomorrow Night Burns"
config.font = wezterm.font("Iosevka SS04")
config.font_size = 14
config.default_prog = { "pwsh" }
-- config.window_background_opacity = 0.7
-- config.win32_system_backdrop = "Acrylic"
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	--	bottom = 0,
}
config.window_decorations = "RESIZE"

-- and finally, return the configuration to wezterm
return config
