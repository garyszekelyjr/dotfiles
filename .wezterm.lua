local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("JetBrains Mono")
--config.font_size = 9
--config.default_prog = { "powershell" }

return config
