-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
-- keymap.set("i", "jk", "<ESC>")

-- START NON QWERTY FIX
-- Start by getting hjkl back in the right place!
keymap.set("n", "p", "h")
keymap.set("n", "n", "j")
keymap.set("n", "e", "k")
keymap.set("n", "a", "l")
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- NOw we don't have nuea any more, we need to move them somewhere else,
-- without taking out any othre usefel commands!
-- p = h to paste
keymap.set("n", "h", "p")
keymap.set("n", "H", "P")
-- N = repeat search in opposite direction, remappped to K (caps version of
-- above)

-- move line like vscode
keymap.set("v", "N", ":m '>+1<CR>gv=gv")
keymap.set("v", "E", ":m '<-2<CR>gv=gv")

keymap.set("n", "k", "nzzzv")
keymap.set("n", "K", "Nzzzv")
-- j = jup to End of word
keymap.set("n", "j", "e")
-- a = append/insert after current character
keymap.set("n", "l", "a")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- paste without copying deleted word to clipboard
keymap.set("x", "<leader>p", '"_dP')

-- copying to general clipboard
keymap.set("n", "<leader>y", '",+y')
keymap.set("v", "<leader>y", '",+y')
keymap.set("n", "<leader>Y", '",+Y')

keymap.set("n", "<leader>d", '",+y')
keymap.set("v", "<leader>d", '",+y')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<C-p>", "<C-w>h")
keymap.set("n", "<C-n>", "<C-w>j")
keymap.set("n", "<C-e>", "<C-w>k")
keymap.set("n", "<C-a>", "<C-w>l")
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- moving vertically
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- searching word
--keymap.set("n", "n", "nzzzv")
--keymap.set("n", "N", "Nzzzv")
