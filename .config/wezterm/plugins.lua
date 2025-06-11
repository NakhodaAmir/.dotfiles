local wezterm = require("wezterm")

local config = {}

local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")

config.color_scheme = "rose-pine"

bar.apply_to_config(config, {
	position = "top",
})

return config
