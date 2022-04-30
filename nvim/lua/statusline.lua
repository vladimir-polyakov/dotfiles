local statusline = "%m" ..
	"%{expand('%:~:.')}" ..
	"%=" ..
	"%#CursorColumn#" ..
	" " ..
	" %p%%" ..
	" %l:%c  "

vim.opt.statusline = statusline
