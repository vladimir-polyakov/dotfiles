local status_ok, cmp = pcall(require, "cmp")
if not status_ok then
	return
end
cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["UltiSnips#Anon"](args.body)
		end
	},
	mapping = cmp.mapping.preset.insert({
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<C-j>"] = function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end,
		["<C-k>"] = function()
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end,
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "UltiSnips" },
	}, {
		{ name = "buffer" },
	})
})

vim.g.UltiSnipsJumpForwardTrigger = "<C-l>"
vim.g.UltiSnipsJumpBackwardTrigger = "<C-h>"

