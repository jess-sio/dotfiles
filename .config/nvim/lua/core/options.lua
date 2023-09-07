local opts = {
	shiftwidth = 4,
	tabstop = 4,
	expandtab = true,
	wrap = false,
	termguicolors = true,
	number = true,
	relativenumber = true,
	laststatus = 2,
	showmode = false,
}

-- Set options from table
for opt, val in pairs(opts) do
	vim.o[opt] = val
end

local base16 = require "base16"
local catppuccin_mocha = base16.theme_from_array({
	"1e1e2e", -- base
	"181825", -- mantle
	"585b70", -- surface2
	"6c7086", -- overlay0
	"7f849c", -- overlay1
	"cdd6f4", -- text
	"f5e0dc", -- rosewater
	"b4befe", -- lavender
	"f38ba8", -- red
	"fab387", -- peach
	"f9e2af", -- yellow
	"a6e3a1", -- green
	"94e2d5", -- teal
	"89b4fa", -- blue
	"cba6f7", -- mauve
	"f2cdcd", -- flamingo
})

base16(catppuccin_mocha, true)
colorscheme = "base16"
vim.cmd("colorscheme", colorscheme)
