let b:ale_enabled = 1
let b:ale_completion_enabled = 0

let b:ale_linters = ['golangci-lint']

set completeopt=noselect,menuone,preview

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
