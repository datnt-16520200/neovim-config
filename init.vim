call plug#begin('~/.config/nvim/plugged')
  "{{ Theme }}
  Plug 'dracula/vim', { 'as': 'dracula' }

  "{{ File browser }}
  Plug 'preservim/nerdtree'				"File browser
  Plug 'Xuyuanp/nerdtree-git-plugin'			"Git status
  Plug 'ryanoasis/vim-devicons'				"Icon
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"{{ File search }}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  "{{ Status bar }}
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  "{{ Code Intellisense }}
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'jiangmiao/auto-pairs'
  Plug 'alvan/vim-closetag'
  
  "{{ Code Syntax highlight }}
  Plug 'yuezk/vim-js'
  Plug 'maxmellon/vim-jsx-pretty'

  "{{ Git }}
  Plug 'tpope/vim-fugitive'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=a 				" Enable mouse

"Softtabs, 2 spaces
set tabstop=2 				" 
set shiftwidth=2 			" 
set shiftround
set expandtab
set listchars=tab:\|\ 		" Tab charactor 
set list

set foldmethod=indent 		" 
set foldlevelstart=99 		"  

set number            "Show line number
set numberwidth=5
set ignorecase 				" Enable case-sensitive
syntax on
colorscheme dracula

set encoding=utf8
set clipboard=unnamedplus

set autoindent
set smartindent

set termguicolors

"Remove highlight
map <C-h> :nohl<CR>

"Extended settings
let nvim_settings_dir = '~/.config/nvim/settings/'
execute 'source '.nvim_settings_dir.'nerdtree.vim'
execute 'source '.nvim_settings_dir.'fzf.vim'
execute 'source '.nvim_settings_dir.'coc.vim'

