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
Plug 'tc50cal/vim-terminal' " she term on my nal
Plug 'tpope/vim-fugitive' " im a runner :3
Plug 'vim-airline/vim-airline' " the silly lil status bar
Plug 'vim-airline/vim-airline-themes' " what does it sound like lol
Plug 'neoclide/coc.nvim', {'branch': 'release'} " autocompletions n whatnot
Plug 'catppuccin/nvim', {'as': 'catppuccin'} " kitty

call plug#end()

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_theme='bubblegum'
colorscheme catppuccin-mocha " i would give my LIFE for this colorscheme

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm(): "\<CR>"
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-w> :tabnew<CR>
nnoremap <C-Right> :tabn<CR>
nnoremap <C-Left> :tabp<CR>
nnoremap <C-s> :q<CR>
nnoremap <C-a> :only<CR>
