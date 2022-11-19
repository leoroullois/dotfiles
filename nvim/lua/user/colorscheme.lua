local colorscheme = "tokyonight-night"
-- Lua
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end

-- TOKYONIGHT
-- night, storm, day
require("tokyonight").setup({
	style = "night",
	transparent = true,
})
