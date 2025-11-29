local on_attach_setup = vim.g.on_attach_setup

local root = vim.fs.dirname(vim.fs.find({
	"pyproject.toml", "setup.py", ".git"
}, { path = vim.api.nvim_buf_get_name(0), upward = true })[1])

vim.lsp.start({
	name = "pyright",
	cmd = { "pyright-langserver", "--stdio" },
	root_dir = root,
	settings = {
		python = { analysis = { typeCheckingMode = "basic" } }
	},
	on_attach = on_attach_setup,
})
