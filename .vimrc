set nocompatible            " Required for advanced Vim features to work.
filetype off                " Required for Vundle
"set encoding=utf-8          " Might be required?

" Set the runtime path to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Vundle plugins go here."
Plugin 'ap/vim-buftabline'
"Plugin 'gertjanreynaert/cobalt2-vim-theme'
"Plugin 'SQLUtilities'
"Plugin 'tbabej/taskwiki'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'xolox/vim-easytags'
Plugin 'suan/vim-instant-markdown'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'severin-lemaignan/vim-minimap'
"Plugin 'xolox/vim-misc'                     " Required for vim-easytags
"Plugin 'MS-SQL-Server-Syntax'
"Plugin 'tpope/vim-obsession'
"Plugin 'rakr/vim-one'
"Plugin 'nlknguyen/papercolor-theme'
"Plugin 'vbnet.vim'
"Plugin 'powerline/powerline'
Plugin 'lervag/vimtex'
Plugin 'vimwiki/vimwiki'
"Plugin 'thaerkh/vim-workspace'
"Plugin 'valloric/youcompleteme'

" Arch Repo Orphans
Plugin 'scrooloose/nerdtree'

" Plugins provided by the Arch repos.
"Plugin 'bling/vim-airline'
"Plugin 'Align'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'tpope/vim-fugitive'
"Plugin 'davidhalter/jedi-vim'
"Plugin 'nanotech/jellybeans.vim'
"Plugin 'vim-latex/vim-latex'
"Plugin 'fholgado/minibufexpl.vim'
"Plugin 'tomasr/molokai'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'ervandew/supertab'
"Plugin 'tpope/vim-surround'
"Plugin 'scrooloose/syntastic'
"Plugin 'majutsushi/tagbar'
"Plugin 'vcscommand.vim'

call vundle#end()           " Required for Vundle
filetype plugin indent on   " required for Vundle

" Formatting
set autoindent                  " Copy indent from current line when starting a new line.
set expandtab                   " Tabs are spaces
set smarttab                    " Uses <Tab>/spaces depending on the situation.
set shiftwidth=4                " Indents are 4 spaces
set tabstop=4                   " Number of spaces for <TAB>.
set softtabstop=4               " Number of spaces in tab when editing.
set backspace=indent,eol,start  " Allow backspacing over autoindent, line breaks, and start of insert

" Interface
" Misc.
set autoread                " Sets to auto read when a file is changed externally.
set mouse=a                 " Enable the use of a mouse.
set clipboard=unnamedplus   " Use the system clipboard by as the default.
set number                  " Include line numbers by default.
set scrolloff=1             " Minimal number of screen lines to keep above/below the cursor.
set cursorline              " Draws a horizontal line/highlight on your current line.
set showmatch               " Highlights matching [{()}].
set wildmenu                " Visual autocomplete for command menu.
colorscheme molokai
let g:molokai_original = 0  " Original Theme looks more like Monokai, i.e., ugly.
let g:rehash245 = 1
"colorscheme solarized
set background=dark         " Required for solarized (dark).

" Auto-Completion
"if !exists('g:ycm_semantic_triggers')
    "let g:ycm_semantic_triggers = {}
"endif
"let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme

" Buffer Management
map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>  " Open MRU buffer when one is deleted.

" Code Folding
set foldenable              " Enable code folding.
" set foldlevelstart=10     " Open most folds by default.
noremap <space> za          " Open/close folds using the spacebar.
let g:vimtex_fold_enabled=1

" Movement
nnoremap <silent> j gj               " Move vertically down by visual line (when wrapping is enagbled).
nnoremap <silent> k gk               " Move vertically up by visual line (when wrapping is enagbled).

" Searching
set incsearch               " Searches for words as characters are entered.
set hlsearch                " Highlight all matches while searching.
set ignorecase              " Ignore case in search patterns....
set smartcase               " ...unless the pattern contains uppercase.
" Turn off search highlight when finished.
nnoremap <leader><space> :nohlsearch<CR>
set magic                   " Enable regular expressions.

" Status Line
let g:airline_powerline_fonts = 1
set laststatus=1           " Ensure airline is always shown.

" Syntax Highlighting
syntax enable               " Enable syntax highlighting.

" GUI Settings 
set gfn=Hack\ 13,Source\ Code\ Pro\ 13

" NERDTree Settings
map <C-t> :NERDTreeToggle<CR>   " Toggle the NERDTree with Ctrl+t.
"let g:NERDTreeDirArrowExpandable = '▸'     " Default on linux.
"let g:NERDTreeDirArrowCollapsible = '▾'    " Default on Linux.
let g:NERDTreeSortOrder = ['[[-timestamp]]']

" To save cursor position.
augroup resCur
    autocmd!
    autocmd BufReadPost * call setpos(".",getpos("'\""))
augroup END

" Open/close procedures.
autocmd VimEnter * source ~/Session.vim         " Open the prior session.
autocmd VimEnter * NERDTree                     " Start the NERDTree.
autocmd VimLeavePre * NERDTreeClose             " Close the NerdTree.
autocmd VimLeavePre * mksession! ~/Session.vim  " Save the session.
