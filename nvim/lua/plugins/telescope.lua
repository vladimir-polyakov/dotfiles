local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
	return
end

local actions, builtins = require("telescope.actions"), require("telescope.builtin")

telescope.setup {
	defaults = {
		mappings = {
			i = {
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
			}
		}
	}
}

local set = vim.keymap.set

set("n", "<Space>f", builtins.git_files)
set("n", "<Space>/", builtins.live_grep)
set("n", "<Space>b", builtins.buffers)
