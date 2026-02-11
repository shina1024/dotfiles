-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.
config.default_prog = {
    "pwsh.exe",
    "-NoLogo",
    "-NoExit",
    "-File",
    "C:\\Program Files (x86)\\Microsoft Visual Studio\\18\\BuildTools\\Common7\\Tools\\Launch-VsDevShell.ps1",
}

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 12
config.color_scheme = "Tokyo Night Moon"
config.window_background_opacity = 0.90

-- Finally, return the configuration to wezterm:
return config
