vim.opt.langmap="ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"

local set = vim.keymap.set

-- run current buffer
set("n", "<leader>r", ":!%:p<Enter>")

set("i", "jk", "<esc>")

-- More naturally working with splits
set("n", "_", "20<C-w><")
set("n", "+", "20<C-w>>")

-- Go by visible rows on wrapped strings
--keymap.set("n", "", "<expr> j v:count ? "j" : "gj"")
--keymap.set("n", "", "<expr> j v:count ? "k" : "gk"")

-- Plugins mappings
--
-- Tmux Navigator
vim.g.tmux_navigator_no_mappings = 1

set("n", "<C-h>", ":TmuxNavigateLeft<cr>")
set("n", "<C-j>", ":TmuxNavigateDown<cr>")
set("n", "<C-k>", ":TmuxNavigateUp<cr>")
set("n", "<C-l>", ":TmuxNavigateRight<cr>")
set("n", "<C-\\>", ":TmuxNavigatePrevious<cr>")

