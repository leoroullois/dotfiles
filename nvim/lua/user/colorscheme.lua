local colorscheme = "tokyonight-night"
-- Lua
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end

-- TOKYONIGHT
-- night, storm, day
--
require("tokyonight").setup({
	style = "night",
	transparent = true,
})
--
-- NEO DARK
-- require("neodark").setup({
--   theme_style = "neodarker"
-- })

-- ONEDARK
-- require('onedark').setup {
--     style = 'deep'
-- }
-- require('onedark').load()

-- PALENIGHTFALL
-- require('palenightfall').setup()

-- GITHUB
-- require("github-theme").setup({
--   theme_style = "dark",
--   -- other config
-- })
