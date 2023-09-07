-- Fancier statusline
return {
	"nvim-lualine/lualine.nvim",
	config = function()
		local colors = {
			black  = '#1e1e2e',
			white  = '#cdd6fa',
			red    = '#f38ba8',
			green  = '#a6e3a1',
			blue   = '#89b4fa',
			yellow = '#f9e2af',
			teal   = '#89b4fa',
			gray   = '#585b70',
		}

		local theme = {
			normal = {
				a = { bg = colors.red, fg = colors.black, gui = 'bold' },
				b = { bg = colors.gray, fg = colors.white },
				c = { bg = colors.black, fg = colors.red },
			},
			insert = {
				a = { bg = colors.blue, fg = colors.black, gui = 'bold' },
				b = { bg = colors.gray, fg = colors.white },
				c = { bg = colors.black, fg = colors.blue },
			},
			visual = {
				a = { bg = colors.yellow, fg = colors.black, gui = 'bold' },
				b = { bg = colors.gray, fg = colors.white },
				c = { bg = colors.black, fg = colors.yellow },
			},
			replace = {
				a = { bg = colors.teal, fg = colors.black, gui = 'bold' },
				b = { bg = colors.gray, fg = colors.white },
				c = { bg = colors.black, fg = colors.teal },
			},
			command = {
				a = { bg = colors.green, fg = colors.black, gui = 'bold' },
				b = { bg = colors.gray, fg = colors.white },
				c = { bg = colors.black, fg = colors.green },
			},
			inactive = {
				a = { bg = colors.black, fg = colors.white, gui = 'bold' },
				b = { bg = colors.gray, fg = colors.white },
				c = { bg = colors.black, fg = colors.white },
			},
		}

		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = theme,
			},
			sections = {
				lualine_a = { 'mode' },
				lualine_b = { 'branch', 'diff', 'diagnostics' },
				lualine_c = { 'filename', 'searchcount', 'selectioncount' },
				lualine_x = { 'encoding', 'fileformat', 'filetype' },
				lualine_y = { 'progress' },
				lualine_z = { 'location' }
			}
		})
	end,
}
