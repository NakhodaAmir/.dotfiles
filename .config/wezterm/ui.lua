local wezterm = require("wezterm")

local config = {}

config.font = wezterm.font("0xProto Nerd Font")
config.font_size = 12.0

config.window_decorations = "NONE"

config.window_close_confirmation = "NeverPrompt"

config.window_padding = {
	left = "1cell",
	right = "1cell",
	bottom = "0.5cell",
}

config.initial_cols = 170
config.initial_rows = 47

return config
