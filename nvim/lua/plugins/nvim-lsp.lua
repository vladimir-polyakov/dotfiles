local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
	return
end

local on_attach = function(client, bufnr)
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	local opts, set = { buffer = bufnr }, vim.keymap.set

	set("n", "gD", vim.lsp.buf.declaration, opts)
	set("n", "gd", vim.lsp.buf.definition, opts)
	set("n", "gr", vim.lsp.buf.references, opts)
	set("n", "gi", vim.lsp.buf.implementation, opts)
	set("n", "K", vim.lsp.buf.hover, opts)
	set("n", "<leader>rn", vim.lsp.buf.rename, opts)

	set("n", "[d", vim.diagnostic.goto_prev, opts)
	set("n", "]d", vim.diagnostic.goto_next, opts)
	set("n", "<leader>e", vim.diagnostic.open_float, opts)
end

-- Suppress diagnostics from LSP reply
--vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end

local servers = { "tsserver", "gopls" }
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup {
		on_attach = on_attach,
	}
end