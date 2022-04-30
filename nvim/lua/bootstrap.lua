local opt = vim.opt

opt.backspace = 'indent,eol,start'
opt.clipboard = 'unnamedplus'
opt.modelines = 0
opt.mouse = 'a'
opt.scrolljump = 8
opt.scrolloff = 10
opt.splitbelow = true
opt.splitright = true
opt.swapfile = false

-- Completion
opt.completeopt = "noselect,menuone,preview"
opt.wildmenu = true

-- Indenting
opt.shiftwidth = 2
opt.smartindent = true
opt.softtabstop = 0
opt.tabstop = 2
opt.wrap = false

-- Appearance
vim.cmd('colorscheme onedark')

opt.background = 'dark'
opt.colorcolumn = '80'
opt.cursorcolumn = false
opt.cursorline = true
opt.list = true
opt.listchars = 'tab:⇥\\ ,trail:·,extends:⋯,precedes:⋯,nbsp:~'
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.title = false

-- Custom runtime for plugins
opt.path:append './node_modules/.bin'
opt.rtp:append '/opt/homebrew/opt/fzf'

vim.cmd('filetype plugin on')

