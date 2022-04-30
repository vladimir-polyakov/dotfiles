local fn = vim.fn
local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
end

return require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

  use {
		"justinmk/vim-dirvish",

		"preservim/nerdcommenter",

		"junegunn/fzf.vim",

		"neovim/nvim-lspconfig",
    "williamboman/nvim-lsp-installer",
		{ "jose-elias-alvarez/null-ls.nvim", requires = { "nvim-lua/plenary.nvim" } },

		"nvim-treesitter/nvim-treesitter",

		"joshdick/onedark.vim",

		"christoomey/vim-tmux-navigator",
	}

  if packer_bootstrap then
    require("packer").sync()
  end
end)
