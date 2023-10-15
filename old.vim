set nocompatible

set number
set cursorline

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set relativenumber

set backspace=indent,eol,start

syntax on

set termguicolors

call plug#begin(expand('~/.vim/plugged'))
Plug 'arcticicestudio/nord-vim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'preservim/nerdtree'
" Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
call plug#end()

colorscheme nord

set hidden
lua << END
require('nvim-web-devicons').setup()
require('lualine').setup {
    options = {theme = require'lualine.themes.nord'}
}
END

nnoremap <S-t> :vsplit<CR>:wincmd p<CR>:terminal<CR>:vertical resize -10<CR>
tnoremap <Esc> <C-\><C-n><CR>

nnoremap <C-t> :NERDTreeMirror<CR>:NERDTreeToggle<CR>

nnoremap <C-a> :tabnew<CR>
nnoremap <C-x> :tabclose<CR>

" Rename tabs to show tab number.
" (Based on http://stackoverflow.com/questions/5927952/whats-implementation-of-vims-default-tabline-function)
if exists("+showtabline")
    function! MyTabLine()
        let s = ''        
        let wn = ''
        let t = tabpagenr()
        let i = 1
        while i <= tabpagenr('$')
            let buflist = tabpagebuflist(i)
            let winnr = tabpagewinnr(i)
            let s .= '%' . i . 'T'
            let s .= (i == t ? '%1*' : '%2*')
            let s .= ' '
            let wn = tabpagewinnr(i,'$')

            let s .= '%#TabNum#'
            let s .= i
            " let s .= '%*'
            let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
            let bufnr = buflist[winnr - 1]
            let file = bufname(bufnr)
            let buftype = getbufvar(bufnr, 'buftype')
            if buftype == 'nofile'
                if file =~ '\/.'
                    let file = substitute(file, '.*\/\ze.', '', '')
                endif
            else
                let file = fnamemodify(file, ':p:t')
            endif
            if file == ''
                let file = '[No Name]'
            endif
            let s .= ' ' . file . ' '
            let i = i + 1
        endwhile
        let s .= '%T%#TabLineFill#%='
        let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
        return s
    endfunction
    set stal=2
    set tabline=%!MyTabLine()
    set showtabline=1
    highlight link TabNum Special
endif
