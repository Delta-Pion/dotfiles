-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the COLOR SCHEME:
-- config.color_scheme = '3024 (dark) (terminal.sexy)'
-- config.color_scheme = "Tomorrow Night Burns"
--

local neofusion_theme = {
	foreground = "#00deff",
	background = "#000000",
	cursor_bg = "#e0d9c7",
	cursor_border = "#e0d9c7",
	cursor_fg = "#070f1c",
	selection_bg = "#ea6847",
	selection_fg = "#e0d9c7",
	ansi = {
		"#070f1c", -- Black (Host)
		"#dd0000", -- Red (Syntax string)
		"#ff5f1f", -- Green (Command) (This one changes the commit colors)
		"#5db2f8", -- Yellow (Command second)
		"#2f516c", -- Blue (Path)
		"#d943a8", -- Magenta (Syntax var)
		"#86dbf5", -- Cyan (Prompt)
		"#e0d9c7", -- White
	},
	brights = {
		"#2f516c", -- Bright Black
		"#d943a8", -- Bright Red (Command error)
		"#ea6847", -- Bright Green (Exec) (changes headings)
		"#dd0000", -- Bright Yellow
		"#5db2f8", -- Bright Blue (Folder)
		"#d943a8", -- Bright Magenta
		"#ea6847", -- Bright Cyan
		"#e0d9c7", -- Bright White
	},
}

config.colors = neofusion_theme
-- "#ea6847", -- Bright Cyan (original neofusino color for red(dd0000) and ff5f1f (neon orange))
-- "#86dbf5", -- Cyan (Prompt)

-- config.default_cursor_style = "BlinkingBlock"
-- config.animation_fps = 1

config.font = wezterm.font("Iosevka SS04")
config.font_size = 14.5
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
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

-- and finally, return the configuration to wezterm
return config
