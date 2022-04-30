local opt, api, env = vim.opt, vim.api, vim.env

opt.rtp:append "/opt/homebrew/opt/fzf"

env.FZF_DEFAULT_COMMAND = "ag --hidden --ignore .git -g \"\""
env.FZF_DEFAULT_OPTS = "--bind alt-a:select-all"

api.nvim_command("command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, fzf#vim#with_preview({'options': '--delimiter : --nth 3..'}), <bang>0)")
api.nvim_command("command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)")
