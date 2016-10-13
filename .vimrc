:syntax on

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
function RunPython()
    :write
    :exec '!python' shellescape(@%, 1)
endfunction
autocmd Filetype python match Error /\s\+$\|,\S/
autocmd FileType python noremap <buffer> <C-b> :call RunPython() <cr>

set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>



