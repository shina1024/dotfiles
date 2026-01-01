-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.
config.default_prog = { "pwsh.exe", "-NoLogo" }
config.launch_menu = {
	{
		label = "PowerShell",
		args = { "pwsh.exe", "-NoLogo" },
	},
	{
		label = "WSL",
		args = { "wsl.exe", "-d", "Ubuntu", "--", "bash", "-lc", "cd ~; exec bash -l" },
	},
}

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.color_scheme = "Tokyo Night Moon"
config.window_background_opacity = 0.90

-- Finally, return the configuration to wezterm:
return config
