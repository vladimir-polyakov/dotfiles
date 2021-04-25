setlocal softtabstop=2
setlocal textwidth=79

let b:ale_linters = ['mypy', 'pyls']
let b:ale_python_pyls_config = {'pyls': {'plugins': {'pyls_mypy': {'enabled': v:true}}}}
let b:ale_fixers = ['black']
let b:ale_fix_on_save = 1

nnoremap <buffer> <C-]> :ALEGoToDefinition<CR>
nnoremap <buffer> <C-h> :ALEHover<CR>
nnoremap <buffer> <C-i> :ALEImport<CR>
nnoremap <buffer> <C-m> :ALERename<CR>
