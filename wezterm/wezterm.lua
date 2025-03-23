local wezterm = require("wezterm")
local config = {}
local dimmer = { brightness = 0.05 }

config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.color_scheme = "Dracula"
config.font_size = 16
config.native_macos_fullscreen_mode = true
config.scrollback_lines = 5000

config.keys = {
  -- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
  {key="LeftArrow", mods="OPT", action=wezterm.action{SendString="\x1bb"}},
  -- Make Option-Right equivalent to Alt-f; forward-word
  {key="RightArrow", mods="OPT", action=wezterm.action{SendString="\x1bf"}},
}
-- config.background = {
-- 	-- This is the deepest/back-most layer. It will be rendered first
-- 	{
-- 		source = {
-- 			File = "/Users/ahmedgrati/Downloads/berserk.jpg",
-- 		},
-- 		-- The texture tiles vertically but not horizontally.
-- 		-- When we repeat it, mirror it so that it appears "more seamless".
-- 		-- An alternative to this is to set `width = "100%"` and have
-- 		-- it stretch across the display
-- 		repeat_x = "Mirror",
-- 		hsb = dimmer,
-- 		-- When the viewport scrolls, move this layer 10% of the number of
-- 		-- pixels moved by the main viewport. This makes it appear to be
-- 		-- further behind the text.
-- 		attachment = { Parallax = 0.1 },
-- 	},
-- }

return config
