local status_ok, nvim_treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

nvim_treesitter.setup {
  ensure_installed = { "javascript", "go", "vim", "lua", "json", "bash", "typescript", "dockerfile" },

  sync_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
