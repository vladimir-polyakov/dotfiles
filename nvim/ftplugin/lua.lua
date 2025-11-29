local function get_nvim_config_root()
	return vim.fs.normalize(vim.fn.stdpath('config'))
end

local on_attach_setup = vim.g.on_attach_setup

vim.lsp.start({
	name = "lua_ls",
	cmd = { "lua-language-server" },
	root_dir = get_nvim_config_root(),
	settings = {
		Lua = {
			runtime = {
				version = 'Lua51'
			},
			workspace = {
				checkThirdParty = false,
				library = {
					[vim.env.VIMRUNTIME] = true,
					[get_nvim_config_root()] = true,
				},
			},
			telemetry = {
				enable = false
			},
			diagnostics = {
				globals = { 'vim' }
			}
		}
	},
	on_attach = on_attach_setup,
})
