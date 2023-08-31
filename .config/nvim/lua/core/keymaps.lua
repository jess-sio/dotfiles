local map = require("helpers.keys").map

-- Quick access to some common actions
map("n", "<leader>fw", "<cmd>w<cr>", "File: Write")
map("n", "<leader>fa", "<cmd>wa<cr>", "File: Write all")
map("n", "<leader>qq", "<cmd>q<cr>", "File: Quit")
map("n", "<leader>qa", "<cmd>qa!<cr>", "File: Quit all")

-- Diagnostic keymaps
map("n", "gx", vim.diagnostic.open_float, "Show diagnostics under cursor")

-- Better window controls
map("n", "<C-h>", "<C-w><C-h>", "Window: Navigate left")
map("n", "<C-j>", "<C-w><C-j>", "Window: Navigate down")
map("n", "<C-k>", "<C-w><C-k>", "Window: Navigate up")
map("n", "<C-l>", "<C-w><C-l>", "Window: Navigate right")
--
map("n", "<S-Left>", "<C-w><S-h>", "Window: Move left")
map("n", "<S-Down>", "<C-w><S-j>", "Window: Move down")
map("n", "<S-Up>", "<C-w><S-k>", "Window: Move up")
map("n", "<S-Right>", "<C-w><S-l>", "Window: Move right")
--
map("n", "<C-Up>", ":resize +2<CR>", "Window: Resize up")
map("n", "<C-Down>", ":resize -2<CR>", "Window: Resize down")
map("n", "<C-Left>", ":vertical resize +2<CR>", "Window: Resize left")
map("n", "<C-Right>", ":vertical resize -2<CR>", "Window: Resize right")
--
map("n", "<leader>dw", "<cmd>close<cr>", "Window: Close")

-- Better buffer controls
local buffers = require("helpers.buffers")
map("n", "<S-l>", ":bnext<CR>", "Buffer: Next")
map("n", "<S-h>", ":bprevious<CR>", "Buffer: Previous")
--
map("n", "<leader>db", buffers.delete_this, "Buffer: Delete current")
map("n", "<leader>do", buffers.delete_others, "Buffer: Delete others")
map("n", "<leader>da", buffers.delete_all, "Buffer: Delete all")

-- Stay in indent mode
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Switch between light and dark modes
map("n", "<leader>ut", function()
	if vim.o.background == "dark" then
		vim.o.background = "light"
	else
		vim.o.background = "dark"
	end
end, "Theme: Toggle between light and dark themes")

-- Clear after search
map("n", "<leader>ur", "<cmd>nohl<cr>", "Search: Clear highlights")

-- Easy clipboard copy/paste
map("v", "Y", '"+y', "Copy to clipboard")
map("v", "P", '"+p', "Paste from clipboard")

-- Better redo
map("n", "U", "<C-r>", "Redo")

-- Find & replace current word
map("n", "<leader>fr", '"ryiw:%s/<C-r>r//g<Left><Left>', "Find & replace current word")
-- Find & replace selection
map("v", "<leader>fr", '"ry:%s/<C-r>r//g<Left><Left>', "Find & replace current selection")
