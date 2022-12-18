local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
	return
end

local organizeImport = function(waitMs)
	local params = vim.lsp.util.make_range_params(nil, vim.lsp.util._get_offset_encoding())
	params.context = {only = {"source.organizeImports"}}
	local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, waitMs)
	for _, res in pairs(result or {}) do
		for _, r in pairs(res.result or {}) do
			if r.edit then
				vim.lsp.util.apply_workspace_edit(r.edit, vim.lsp.util._get_offset_encoding())
			else
				vim.lsp.buf.execute_command(r.command)
			end
		end
	end
end

local on_attach = function(client, bufnr)
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	local opts, set = { buffer = bufnr }, vim.keymap.set

	set("n", "gd", vim.lsp.buf.definition, opts)
	set("n", "gD", vim.lsp.buf.type_definition, opts)
	set("n", "gr", vim.lsp.buf.references, opts)
	set("n", "gi", vim.lsp.buf.implementation, opts)
	set("n", "K", vim.lsp.buf.hover, opts)
	set("n", "<leader>rn", vim.lsp.buf.rename, opts)

	set("n", "<leader>aa", vim.diagnostic.setqflist, opts)
	set("n", "<leader>ae", function()
		vim.diagnostic.setqflist({severity = "E"})
	end, opts)
	set("n", "<leader>aw", function()
		vim.diagnostic.setqflist({severity = "W"})
	end, opts)
	set("n", "<leader>e", vim.diagnostic.open_float, opts)
	set("n", "[d", vim.diagnostic.goto_prev, opts)
	set("n", "]d", vim.diagnostic.goto_next, opts)

	set("n", "<leader>=", function()
		organizeImport(3000)
		vim.lsp.buf.formatting_sync(nil, 3000)
	end, opts)
end


local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.gopls.setup {
	cmd = {'gopls', '-remote=auto'},
	debounce_text_changes = 300,
	on_attach = on_attach,
	settings = {
		gopls = {
			experimentalPostfixCompletions = true,
			analyses = {
				unusedparams = true,
				shadow = true,
			},
			staticcheck = true,
		},
	},
	init_options = {
		usePlaceholders = true,
	},
	capabilities = capabilities
}
