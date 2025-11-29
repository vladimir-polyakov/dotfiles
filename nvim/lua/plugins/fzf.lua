local set = vim.keymap.set

vim.g.fzf_file_preview_command = 'cat {}'
vim.g.fzf_history_dir = '~/.local/share/fzf-history'

set("n", "<Leader>p", ":Files<cr>")
set("n", "<Leader>w", ":Windows<cr>")
set("n", "<Leader>b", ":Buffers<cr>")

set("n", "<Leader>f", function()
	vim.fn["fzf#vim#files"](vim.fn.getcwd())
end)

set("n", "<leader>/", ":Rg<cr>")
