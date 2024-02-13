-- Miscelaneous fun stuff
return {
	{ -- Show indent on all lines
		"lukas-reineke/indent-blankline.nvim",
	},
	{
		-- Comment with haste
		"numToStr/Comment.nvim",
		opts = {},
	},
	{
		-- Move stuff with <M-j> and <M-k> in both normal and visual mode
		"echasnovski/mini.move",
		config = function()
			require("mini.move").setup()
		end,
	},
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	"tpope/vim-surround", -- Surround stuff with the ys-, cs-, ds- commands
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	},
	{
		"phaazon/hop.nvim",
		config = function()
			local hop = require("hop").setup({
				quit_key = "<leader>",
			})
			require("helpers.keys").map("n", "s", ":HopChar2<CR>", "Hop to 2 char pattern")
			require("helpers.keys").map("n", "S", ":HopWord<CR>", "Hop to any word")
		end,
	},
}
