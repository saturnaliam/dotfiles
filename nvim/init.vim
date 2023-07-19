:set number " setting my delicious little configs
:set autoindent
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set expandtab
:set cursorline
:set termguicolors

call plug#begin('~/.nvim/plugged')

Plug 'preservim/nerdtree' " :nerd:
Plug 'rafi/awesome-vim-colorschemes' " colorschemes
Plug 'ryanoasis/vim-devicons' " im being so lowkey rn i forgot what this one does
Plug 'tpope/vim-fugitive' " im a runner :3
Plug 'vim-airline/vim-airline' " the silly lil status bar
Plug 'vim-airline/vim-airline-themes' " what does it sound like lol
Plug 'neoclide/coc.nvim' " autocompletions n whatnot
Plug 'ap/vim-css-color'

call plug#end()

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_theme='bubblegum'
colorscheme pink-moon " i would give my LIFE for this colorscheme

function OpenTerminal()
  :botright split
  :terminal
  :resize 9
endfunction

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm(): "\<CR>"
nnoremap <silent> <C-f> :NERDTreeFocus<CR>
nnoremap <silent> <C-n> :NERDTree<CR>
nnoremap <silent> <C-t> :NERDTreeToggle<CR>
nnoremap <silent> <A-w> :tabnew<CR>
nnoremap <silent> <A-Right> :tabn<CR>
nnoremap <silent> <A-Left> :tabp<CR>
nnoremap <silent> <A-s> :q<CR>
nnoremap <silent> <A-a> :only<CR>
nnoremap <silent> <A-q> :vsplit<CR>
nnoremap <silent> <A-t> :call OpenTerminal()<CR>
