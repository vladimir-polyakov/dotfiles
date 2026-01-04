local set = vim.keymap.set

vim.g.fzf_file_preview_command = 'cat {}'
vim.g.fzf_history_dir = '~/.local/share/fzf-history'

-- Variable to scope fzf searches
vim.g.fzf_search_path = vim.fn.getcwd()

-- Helper to open file with absolute path and restore cwd
local function open_file(file, original_cwd, lnum, col)
	local abs_path = vim.fn.fnamemodify(file, ":p")
	vim.cmd("cd " .. vim.fn.fnameescape(original_cwd))
	if lnum then
		vim.cmd("edit +" .. lnum .. " " .. vim.fn.fnameescape(abs_path))
		if col then
			vim.fn.cursor(tonumber(lnum), tonumber(col))
		end
	else
		vim.cmd("edit " .. vim.fn.fnameescape(abs_path))
	end
end

set("n", "<Leader>p", ":Files<cr>")
set("n", "<Leader>w", ":Windows<cr>")
set("n", "<Leader>b", ":Buffers<cr>")
set("n", "<Leader>l", ":BLines<cr>")

set("n", "<Leader>f", function()
	local original_cwd = vim.fn.getcwd()
	vim.fn["fzf#vim#files"](vim.g.fzf_search_path, {
		["sink"] = function(file)
			open_file(file, original_cwd)
		end
	})
end)

set("n", "<leader>/", function()
	local original_cwd = vim.fn.getcwd()
	local search_path = vim.g.fzf_search_path

	local rg_cmd = "rg --column --line-number --no-heading --color=always --smart-case -- {q} " .. search_path .. " || true"

	vim.fn["fzf#run"](vim.fn["fzf#wrap"]({
		options = "--ansi --disabled --prompt '> ' --bind 'change:reload:" .. rg_cmd .. "' --delimiter / --with-nth '-2..'",
		["sink"] = function(line)
			local file, lnum, col = line:match("([^:]+):(%d+):(%d+):")
			if file then
				open_file(file, original_cwd, lnum, col)
			end
		end
	}))
end)

-- Set search directory to current buffer's directory
set("n", "<leader>sd", function()
	vim.g.fzf_search_path = vim.fn.expand("%:p:h")
	print("Search path set to: " .. vim.g.fzf_search_path)
end)

-- Reset search directory to project root
set("n", "<leader>sc", function()
	vim.g.fzf_search_path = vim.fn.getcwd()
	print("Search path reset to: " .. vim.g.fzf_search_path)
end)
