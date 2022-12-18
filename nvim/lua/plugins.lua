local fn = vim.fn
local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
end

return require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

	use {
		"justinmk/vim-dirvish",
		"junegunn/fzf.vim",

		"preservim/nerdcommenter",
		"justinmk/vim-sneak",

		"neovim/nvim-lspconfig",
		"williamboman/nvim-lsp-installer",

		{ "nvim-treesitter/nvim-treesitter" },
		{ "nvim-treesitter/nvim-treesitter-textobjects", requires = { "nvim-treesitter/nvim-treesitter" } },

		"dracula/vim",
		"editorconfig/editorconfig-vim",

		"christoomey/vim-tmux-navigator",

		"solarnz/thrift.vim",

		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/nvim-cmp",

		'SirVer/ultisnips',
		'quangnguyen30192/cmp-nvim-ultisnips'
	}

	if packer_bootstrap then
		require("packer").sync()
	end
end)
