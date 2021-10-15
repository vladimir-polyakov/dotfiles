let b:ale_enabled = 1
let b:ale_completion_enabled = 1

set omnifunc=ale#completion#OmniFunc
set completeopt=menuone,noinsert

let b:ale_fixers = ['eslint']

let g:ale_fix_on_save = 0
