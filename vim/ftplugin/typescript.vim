let b:ale_enabled = 1
let b:ale_completion_enabled = 1

set omnifunc=ale#completion#OmniFunc
set completeopt=menuone,noinsert

nnoremap <buffer> <C-]> :ALEGoToDefinition<CR>
nnoremap <buffer> <C-h> :ALEHover<CR>
nnoremap <buffer> <C-i> :ALEImport<CR>
nnoremap <buffer> <C-m> :ALERename<CR>
