-- Telescope fuzzy finding (all the things)
return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
				cond = vim.fn.executable("make") == 1,
			},
			"ThePrimeagen/harpoon",
		},
		config = function()
			require("telescope").setup({
				defaults = {
					mappings = {
						i = {
							["<C-u>"] = false,
							["<C-d>"] = false,
						},
					},
				},
			})

			-- Enable telescope fzf native, if installed
			pcall(require("telescope").load_extension, "fzf")
			require("telescope").load_extension("harpoon")

			local map = require("helpers.keys").map
			map("n", "<leader>fr", require("telescope.builtin").oldfiles, "Telescope: Recently opened")
			map("n", "<leader><space>", require("telescope.builtin").buffers, "Telescope: Open buffers")
			map("n", "<leader>/", function()
				-- You can pass additional configuration to telescope to change theme, layout, etc.
				require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end, "Telescope: Search in current buffer")

			map("n", "<leader>sf", require("telescope.builtin").find_files, "Telescope: Files")
			map("n", "<leader>sh", require("telescope.builtin").help_tags, "Telescope: Help")
			map("n", "<leader>sw", require("telescope.builtin").grep_string, "Telescope: Current word")
			map("n", "<leader>sg", require("telescope.builtin").live_grep, "Telescope: Grep")
			map("n", "<leader>sd", require("telescope.builtin").diagnostics, "Telescope: Diagnostics")

			map("n", "<C-p>", require("telescope.builtin").keymaps, "Telescope: Search keymaps")

			local harpoon_mark = require("harpoon.mark")
			map("n", "<leader>*", harpoon_mark.add_file, "Harpoon: Mark file")
			local harpoon_ui = require("harpoon.ui")
			map("n", "g*", harpoon_ui.toggle_quick_menu, "Harpoon: Show marks")
		end,
	},
}
