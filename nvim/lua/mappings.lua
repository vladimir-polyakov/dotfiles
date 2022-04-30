vim.opt.langmap='ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz'

local keymap = vim.keymap

-- run current buffer
keymap.set('n', '<leader>r', ':!%:p<Enter>')

keymap.set('i', 'jk', '<esc>')

-- More naturally working with splits
keymap.set('n', '_', '20<C-w><')
keymap.set('n', '+', '20<C-w>>')

-- Go by visible rows on wrapped strings
--keymap.set('n', '', "<expr> j v:count ? 'j' : 'gj'")
--keymap.set('n', '', "<expr> j v:count ? 'k' : 'gk'")

-- Plugins mappings
--
-- Tmux Navigator
vim.g.tmux_navigator_no_mappings = 1

keymap.set('n', '<C-h>', ':TmuxNavigateLeft<cr>')
keymap.set('n', '<C-j>', ':TmuxNavigateDown<cr>')
keymap.set('n', '<C-k>', ':TmuxNavigateUp<cr>')
keymap.set('n', '<C-l>', ':TmuxNavigateRight<cr>')
keymap.set('n', '<C-\\>', ':TmuxNavigatePrevious<cr>')

-- fzf
keymap.set('n', '<Space>f', ':Files<CR>')
keymap.set('n', '<Space>t', ':Tags<CR>')
keymap.set('n', '<Space>l', ':BLines<CR>')
keymap.set('n', '<Space>L', ':Lines<CR>')
keymap.set('n', '<Space>h', ':History<CR>')
keymap.set('n', '<Space>b', ':Buffers<CR>')
keymap.set('n', '<Space>w', ':Windows<CR>')
keymap.set('n', '<Space>/', ':Ag<CR>')
