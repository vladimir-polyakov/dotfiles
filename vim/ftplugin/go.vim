
let b:ale_enabled = 1
let b:ale_completion_enabled = 0

let b:ale_linters = ['golangci-lint']
let b:ale_go_golangci_lint_options = ''

set completeopt=noselect,menuone,preview

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

nmap <buffer> <C-d> <Plug>(go-doc)
nmap <buffer> <C-i> <Plug>(go-imports)
nmap <buffer> <leader>t <Plug>(go-test)
