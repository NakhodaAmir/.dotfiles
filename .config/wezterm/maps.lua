local wezterm = require("wezterm")
local action = wezterm.action

local config = {}

config.leader = {
	key = "Space",
	mods = "CTRL",
	timeout_milliseconds = 2000,
}

config.keys = {
	{
		key = "Space",
		mods = "LEADER",
		action = wezterm.action.EmitEvent("toggle-maximize"),
	},
	{
		key = "Tab",
		mods = "LEADER",
		action = wezterm.action.SpawnCommandInNewTab({ cwd = wezterm.home_dir, domain = "DefaultDomain" }),
	},
	{
		key = "]",
		mods = "LEADER",
		action = wezterm.action.ActivateTabRelative(1),
	},
	{
		key = "[",
		mods = "LEADER",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	{
		key = "Backspace",
		mods = "LEADER",
		action = wezterm.action.CloseCurrentTab({ confirm = false }),
	},
	{
		key = "v",
		mods = "LEADER",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "h",
		mods = "LEADER",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "w",
		mods = "LEADER",
		action = wezterm.action.ActivatePaneDirection("Next"),
	},
	{
		key = "\\",
		mods = "LEADER",
		action = wezterm.action.PromptInputLine({
			description = "Enter new name for tab",
			action = wezterm.action_callback(function(window, pane, line)
				-- line will be `nil` if they hit escape without entering anything
				-- An empty string if they just hit enter
				-- Or the actual line of text they wrote
				if line then
					window:active_tab():set_title(line)
				end
			end),
		}),
	},
	{
		key = "`",
		mods = "LEADER",
		action = action.PromptInputLine({
			description = "Enter name for new workspace",
			action = wezterm.action_callback(function(window, pane, line)
				if line then
					window:perform_action(
						action.SwitchToWorkspace({
							name = line,
						}),
						pane
					)
				end
			end),
		}),
	},
	{
		key = "1",
		mods = "LEADER",
		action = action.ShowLauncherArgs({ flags = "FUZZY|WORKSPACES" }),
	},
}

return config
