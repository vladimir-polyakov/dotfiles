local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
	return
end

local status_ok, util = pcall(require, "vim.lsp.util")
if not status_ok then
	return
end

local formatting, diagnostics = null_ls.builtins.formatting, null_ls.builtins.diagnostics

null_ls.setup {
	debug = true,
	sources = {
		formatting.gofmt,
		formatting.goimports,
		diagnostics.golangci_lint,
		diagnostics.eslint,
	},
	on_attach = function(client, buffer)
		if client.resolved_capabilities.document_formatting then
			vim.keymap.set(
				"n",
				"<leader>f",
				function() 
					local params = util.make_formatting_params({})
					client.request("textDocument/formatting", params, nil, bufnr) 
				end,
				{ buffer = buffer }
			)
		end
	end,
}
