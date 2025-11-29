vim.g.mapleader = " "

local opt = vim.opt

opt.backspace = "indent,eol,start"
opt.clipboard = "unnamedplus"
opt.modelines = 0
opt.mouse = "a"
opt.scrolljump = 8
opt.scrolloff = 10
opt.splitbelow = true
opt.splitright = true
opt.swapfile = false

-- Completion
opt.completeopt = { "menu", "menuone", "noselect" }

-- Indenting
opt.shiftwidth = 2
opt.smartindent = true
opt.softtabstop = 0
opt.tabstop = 2
opt.wrap = false

-- Appearance
vim.cmd.colorscheme("dracula")

opt.cursorcolumn = false
opt.cursorline = true
opt.list = true
opt.listchars = "tab:⇥\\ ,trail:·,extends:⋯,precedes:⋯,nbsp:~"
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.title = false

-- Spell checking
opt.spell = true
opt.spelllang = "en,cjk"

-- Sessions
opt.sessionoptions:append "globals"

-- Go to last edit place on buffer open
vim.cmd([[
	augroup startup
		autocmd!
		autocmd BufReadPost *
			\ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
			\ |   exe "normal! g`\""
			\ | endif
	augroup END
]])

-- Custom runtime for plugins
opt.path:append "./node_modules/.bin"
opt.rtp:append "/opt/homebrew/opt/fzf"

if vim.env.VIM_PATH ~= nil and vim.env.VIM_PATH ~= '' then
  vim.env.PATH = vim.env.VIM_PATH
end
