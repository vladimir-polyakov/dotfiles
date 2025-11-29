local on_attach_setup = vim.g.on_attach_setup

local root = vim.fs.dirname(vim.fs.find({
	"go.mod"
}, { path = vim.api.nvim_buf_get_name(0), upward = true })[1])

vim.lsp.start({
	name = "gopls",
	cmd = { "gopls" },
	root_dir = root,

	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
			codelenses = {
				generate = true,
				test = true,
			},
			['local'] = 'true',
		},
	},
	on_attach = on_attach_setup,
})
