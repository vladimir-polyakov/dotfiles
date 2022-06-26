function statusline()
	return "%m" .. "%{expand(\"%:~:.\")}" .. "%= %P %l:%c  "
end

vim.opt.statusline = "%!v:lua.statusline()"
