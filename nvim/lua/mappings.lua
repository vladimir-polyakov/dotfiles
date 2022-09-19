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
set("n", "Y", "yy")
set("n", "<Leader>o", "o<Esc>k")
set("n", "<Leader>O", "O<Esc>j")

set("n", "<Leader>l", ":g//#<Left><Left>")
set("n", "<Leader>q", ":bd<cr>")
set("n", "<Leader>j", ":bN<cr>")
set("n", "<Leader>k", ":bn<cr>")
set("c", "<cr>", function()
	line = vim.fn.getcmdline()

	if line:match("#$") then
		return "<cr>:"
	elseif line:match("^ls") or line:match("^files") or line:match("^buffers") then
		return "<cr>:b "
	else
		return "<cr>"
	end
end, { expr = true })

