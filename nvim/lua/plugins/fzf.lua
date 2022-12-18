local g, set, fn, api = vim.g, vim.keymap.set, vim.fn, vim.api

g.fzf_preview_window = {"right:50%", "ctrl-s"}
g.fzf_buffer_jump = 1
g.fzf_history_dir = '~/.local/share/fzf-history'

---- Current working dir for fzf Files and Ag commands
---- Use PascalCase to enable storing into the Session file
g.FZFWorkDir = fn.getcwd()

set("n", "<Leader>p", ":Files<cr>")
set("n", "<Leader>w", ":Windows<cr>")
set("n", "<Leader>b", ":Buffers<cr>")

set("n", "<Leader>sd", function()
	g.FZFWorkDir = fn.expand("%:~:.")
end)

set("n", "<Leader>f", function()
	fn["fzf#vim#files"](g.FZFWorkDir)
end)

set("n", "<Leader>/", function()
	query = "^(?=.)"

	fn["fzf#vim#ag_raw"](fn.shellescape(query) .. " " .. g.FZFWorkDir)
end)
