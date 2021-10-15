let b:ale_enabled = 1
let b:ale_completion_enabled = 0

set completeopt=noselect,menuone,preview

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
