local fn = vim.fn

function my_statusline()
	local fpath = fn.fnamemodify(fn.expand "%", ":~:.")

	return "%m" .. fpath .. "%= %P %l:%c  "
end

vim.opt.statusline = "%!v:lua.my_statusline()"
