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
	{
		-- Better buffer closing actions. Available via the buffers helper.
		"kazhala/close-buffers.nvim",
		opts = {
			preserve_window_layout = { "this", "nameless" },
		},
	},
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	"tpope/vim-surround", -- Surround stuff with the ys-, cs-, ds- commands
	{
		"akinsho/bufferline.nvim",
		version = "v3.*",
		dependencies = "nvim-tree/nvim-web-devicons",
		opts = {},
		config = function()
			vim.opt.termguicolors = true
			require("bufferline").setup()
		end,
	},
	{
		-- Show symbols in the current file
		"simrat39/symbols-outline.nvim",
		config = function()
			require("symbols-outline").setup({
				show_relative_numbers = true,
			})
		end,
	},
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	},
	{
		"mbbill/undotree",
		config = function()
			require("helpers.keys").map("n", "<leader>u", vim.cmd.UndotreeToggle)
		end,
	},
	{
		"phaazon/hop.nvim",
		config = function()
			local hop = require("hop").setup({
				quit_key = '<leader>',
			})
			require("helpers.keys").map("n", "s", ":HopChar2<CR>", "Hop to 2 char pattern")
			require("helpers.keys").map("n", "S", ":HopWord<CR>", "Hop to any word")
		end,
	},
}
