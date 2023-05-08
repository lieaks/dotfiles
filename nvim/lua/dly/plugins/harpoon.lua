-- import comment plugin safely
local setup, mark = pcall(require, "harpoon.mark")
local ui = require("harpoon.ui")
if not setup then
	return
end

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-q>", ui.toggle_quick_menu)
vim.keymap.set("n", "<C-i>", function()
	ui.nav_file(1)
end)
vim.keymap.set("n", "<C-s>", function()
	ui.nav_file(2)
end)
vim.keymap.set("n", "<C-t>", function()
	ui.nav_file(3)
end)
vim.keymap.set("n", "<C-g>", function()
	ui.nav_file(4)
end)
