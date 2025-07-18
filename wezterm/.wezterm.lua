local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("JetBrains Mono")
config.font_size = 13
config.default_cursor_style = "SteadyBar"

-- ON WINDOWS
if package.config:sub(1, 1) == "\\" then
	config.font_size = 10
	config.default_prog = { 'pwsh.exe' }
end


config.leader = {
	key = 'Space',
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
	{
		key = '[',
		mods = 'LEADER',
		action = wezterm.action.MoveTabRelative(-1)
	},
	{
		key = ']',
		mods = 'LEADER',
		action = wezterm.action.MoveTabRelative(1)
	}

}

for i = 1, 9 do
	config.keys[#config.keys + 1] = {
		key = tostring(i),
		mods = "LEADER",
		action = wezterm.action { ActivateTab = i - 1 }
	}
end

return config
