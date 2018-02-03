set nocompatible            " Required for advanced Vim features to work.
filetype off                " Required for Vundle
"set encoding=utf-8          " Might be required?

" Set the runtime path to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Vundle plugins go here."
Plugin 'gertjanreynaert/cobalt2-vim-theme'
Plugin 'nlknguyen/papercolor-theme'
Plugin 'altercation/vim-colors-solarized'
Plugin 'suan/vim-instant-markdown'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'rakr/vim-one'
Plugin 'lervag/vimtex'
" Plugin 'valloric/youcompleteme'

" Plugins provided by the Arch repos.
" Plugin 'bling/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
" Plugin 'tpope/vim-fugitive'
" Plugin 'davidhalter/jedi-vim'
" Plugin 'nanotech/jellybeans.vim'
" Plugin 'vim-latex/vim-latex'
" Plugin 'tomasr/molokai'
" Plugin 'scrooloose/nerdtree'
" Plugin 'ervandew/supertab'
" Plugin 'tpope/vim-surround'
" Plugin 'scrooloose/syntastic'


call vundle#end()           " Required for Vundle
filetype plugin indent on   " required for Vundle

" Formatting
set autoindent              " Copy indent from current line when starting a new line.
set expandtab               " Tabs are spaces
set smarttab                " Uses <Tab>/spaces depending on the situation.  
set shiftwidth=4            " Indents are 4 spaces
set tabstop=4               " Number of spaces for <TAB>.
set softtabstop=4           " Number of spaces in tab when editing.

" Interface
"   Misc.
    set autoread                " Sets to auto read when a file is changed externally.
    set mouse=a                 " Enable the use of a mouse.
    set clipboard=unnamedplus   " Use the system clipboard by as the default.
    set number                  " Include line numbers by default.
    set cursorline              " Draws a horizontal line/highlight on your current line.
    set showmatch               " Highlights matching [{()}].
    set wildmenu                " Visual autocomplete for command menu.
    colorscheme solarized 

"   Auto-Completion
    if !exists('g:ycm_semantic_triggers')
        let g:ycm_semantic_triggers = {}
    endif
    let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme

"   Code Folding
    set foldenable              " Enable code folding.
    " set foldlevelstart=10     " Open most folds by default.
    noremap <space> za          " Open/close folds using the spacebar.
    let g:vimtex_fold_enabled=1

"   Searching
    set incsearch               " Searches for words as characters are entered.
    set hlsearch                " Highlight all matches while searching.
    set ignorecase              " Ignore case in search patterns....
    set smartcase               " ...unless the pattern contains uppercase.
    " Turn off search highlight when finished.
    nnoremap <leader><space> :nohlsearch<CR>
    set magic                   " Enable regular expressions.

"   Status Line
    let g:airline_powerline_fonts = 1
    set laststatus=2            " Ensure airline is always shown.

"   Syntax Highlighting
    syntax enable               " Enable syntax highlighting.

"   GUI Settings 
    set gfn=Hack\ 14,Source\ Code\ Pro\ 14

" To save cursor position.
augroup resCur
    autocmd!
    autocmd BufReadPost * call setpos(".",getpos("'\""))
augroup END
