local status_ok, nvim_treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	vim.notify("Failed to load nvim_treesitter.configs: " .. nvim_treesitter, vim.log.levels.ERROR)
	return
end

nvim_treesitter.setup {
	ensure_installed = { "javascript", "go", "vim", "lua", "json", "bash", "typescript", "dockerfile", "vimdoc", "java" },

	sync_install = false,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},

	textobjects = {
		select = {
			enable = true,
			lookahead = true,
			keymaps = {
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ap"] = "@parameter.outer",
				["ip"] = "@parameter.inner",
			},
		},
		move = {
			enable = true,
			set_jumps = true,
			goto_next_start = {
				["]m"] = "@function.outer",
			},
			goto_previous_start = {
				["[m"] = "@function.outer",
			},
		},
	},
}
