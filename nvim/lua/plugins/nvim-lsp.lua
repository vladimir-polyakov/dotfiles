require("mason").setup()

local function on_attach_setup(client, bufnr)
	local opts, set = { buffer = bufnr }, vim.keymap.set

	set("n", "gd", vim.lsp.buf.definition, opts)
	set("n", "gvd", ":vsplit | lua vim.lsp.buf.definition()<cr>", opts)
	set("n", "gD", vim.lsp.buf.type_definition, opts)
	set("n", "gvD", ":vsplit | lua vim.lsp.buf.type_definition()<cr>", opts)

	set("n", "gr", vim.lsp.buf.references, opts)
	set("n", "gi", vim.lsp.buf.implementation, opts)
	set("n", "K", vim.lsp.buf.hover, opts)
	set("n", "<leader>rn", vim.lsp.buf.rename, opts)
	set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

	set("n", "<leader>aa", vim.diagnostic.setqflist, opts)
	set("n", "<leader>ae", function()
		vim.diagnostic.setqflist({ severity = vim.diagnostic.severity.E })
	end, opts)
	set("n", "<leader>aw", function()
		vim.diagnostic.setqflist({ severity = vim.diagnostic.severity.W })
	end, opts)
	set("n", "<leader>e", vim.diagnostic.open_float, opts)

	set("n", "<leader>=", function()
		vim.lsp.buf.format()
		vim.lsp.buf.code_action({
			filter = function(action)
				return action.kind == "source.organizeImports"
			end,
			apply = true,
		})
	end, opts)
end

vim.g.on_attach_setup = on_attach_setup
