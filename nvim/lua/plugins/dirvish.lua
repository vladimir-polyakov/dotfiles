-- Sort directories first, then hide common ignored patterns
vim.g.dirvish_mode = ":sort ,^.*[/], | silent! keeppatterns g@\\v/__pycache__|node_modules|\\.git/|\\.venv/|venv/|env39/|\\.pyc$|dist/|build/@d _"

