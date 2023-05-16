local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = false
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search setting
opt.cursorline = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true 
opt.background = "dark"
opt.signcolumn = "yes"
opt.colorcolumn = "80"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.swapfile = false

opt.iskeyword:append("-") -- consider string-string as whole word
