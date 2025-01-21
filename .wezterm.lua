local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("JetBrains Mono")

if package.config:sub(1, 1) == "\\" then
	-- Windows
	config.font_size = 9
	config.default_prog = { "powershell" }
end

return config
