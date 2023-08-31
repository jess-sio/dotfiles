-- Themes
return {
	"typicode/bg.nvim",
	"nyoom-engineering/oxocarbon.nvim",
	"ellisonleao/gruvbox.nvim",
	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			require("catppuccin").setup({
				dim_inactive = {
					enabled = true
				}
			})
		end,
	},
	{
		"rose-pine/nvim",
		name = "rose-pine",
	},
	"sainnhe/everforest",
	"savq/melange-nvim", -- Overall tweaks
	"norcalli/nvim-colorizer.lua",
}
