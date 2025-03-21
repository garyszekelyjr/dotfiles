local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("JetBrains Mono")

config.leader = {
	key = 'a',
	mods = 'CTRL',
	timeout_milliseconds = 2000
}

config.keys = {
	{
		key = "t",
		mods = "LEADER",
		action = wezterm.action { SpawnTab = "CurrentPaneDomain" }
	},
	{
		key = "x",
		mods = "LEADER",
		action = wezterm.action { CloseCurrentPane = { confirm = true } }
	},
	{
		key = "\\",
		mods = "LEADER",
		action = wezterm.action.SplitHorizontal {}
	},
	{
		key = "-",
		mods = "LEADER",
		action = wezterm.action.SplitVertical {}
	},
	{
		key = 'LeftArrow',
		mods = 'LEADER',
		action = wezterm.action.ActivatePaneDirection 'Left',
	},
	{
		key = 'RightArrow',
		mods = 'LEADER',
		action = wezterm.action.ActivatePaneDirection 'Right',
	},
	{
		key = 'UpArrow',
		mods = 'LEADER',
		action = wezterm.action.ActivatePaneDirection 'Up',
	},
	{
		key = 'DownArrow',
		mods = 'LEADER',
		action = wezterm.action.ActivatePaneDirection 'Down',
	},
}

for i = 1, 9 do
	config.keys[#config.keys + 1] = {
		key = tostring(i),
		mods = "LEADER",
		action = wezterm.action { ActivateTab = i - 1 }
	}
end

config.default_prog = { "fish" }

return config
