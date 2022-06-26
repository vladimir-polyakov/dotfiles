local g, set = vim.g, vim.keymap.set

g.fzf_preview_window = {"right:50%", "ctrl-s"}
g.fzf_buffer_jump = 1

set("n", "<Leader>f", ":Files<cr>")
set("n", "<Leader>w", ":Windows<cr>")
set("n", "<Leader>b", ":Buffers<cr>")
set("n", "<Leader>/", ":Ag<cr>")
