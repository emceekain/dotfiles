" vim: set foldmarker={,} foldmethod=marker:
set nocompatible            " Required for advanced Vim features to work.
"set encoding=utf-8          " Might be required for YouCompleteMe/Windows.

" Platform Identification {
    silent function! LINUX()
        return has('unix') && !has('win32unix')
    endfunction

    silent function! WINDOWS()
        return (has('win32') || has('win64'))
    endfunction
" }

" Plugins {
    filetype off                " Required for Vundle

    " Set the runtime path to include Vundle and initialize.
    if WINDOWS()
        set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
        call vundle#begin('$HOME/vimfiles/bundle/')
    elseif LINUX()
        set rtp+=~/.vim/bundle/Vundle.vim
        call vundle#begin()
    endif
    " Plugins not provided by the Arch Repos {
        Plugin 'VundleVim/Vundle.vim'
        " Vundle plugins go here."
        Plugin 'mileszs/ack.vim'
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
        "Plugin 'vbnet.vim'
        "Plugin 'rakr/vim-one'
        "Plugin 'nlknguyen/papercolor-theme'
        "Plugin 'powerline/powerline'
        Plugin 'lervag/vimtex'
        Plugin 'vimwiki/vimwiki'
        "Plugin 'thaerkh/vim-workspace'
        "Plugin 'valloric/youcompleteme'
    " }
    " Arch Repo Orphans {
        Plugin 'tomasr/molokai'
        Plugin 'scrooloose/nerdtree'
    " }
    " Plugins provided by the Arch repos. {
        if WINDOWS()
            "Plugin 'bling/vim-airline'
            "Plugin 'Align'
            "Plugin 'vim-airline/vim-airline-themes'
            "Plugin 'ctrlpvim/ctrlp.vim'
            "Plugin 'tpope/vim-fugitive'
            "Plugin 'davidhalter/jedi-vim'
            "Plugin 'nanotech/jellybeans.vim'
            "Plugin 'vim-latex/vim-latex'
            "Plugin 'fholgado/minibufexpl.vim'
            "Plugin 'scrooloose/nerdcommenter'
            "Plugin 'shemerey/vim-project'
            "Plugin 'ervandew/supertab'                 " Insert-mode completion with <Tab>.  Annoying for spacing issues.
            "Plugin 'tpope/vim-surround'
            "Plugin 'scrooloose/syntastic'
            "Plugin 'majutsushi/tagbar'
            "Plugin 'vcscommand.vim'
        endif
    " }
    call vundle#end()           " Required for Vundle
    filetype plugin indent on   " required for Vundle
" }
" Formatting {
    set autoindent                  " Copy indent from current line when starting a new line.
    set expandtab                   " Tabs are spaces
    set smarttab                    " Uses <Tab>/spaces depending on the situation.
    set shiftwidth=4                " Indents are 4 spaces
    set tabstop=4                   " Number of spaces for <TAB>.
    set softtabstop=4               " Number of spaces in tab when editing.
    set backspace=indent,eol,start  " Allow backspacing over autoindent, line breaks, and start of insert
    "set backspace=2                 " Make sensible use of the backspace key.
" }
" Interface {
    " General {
        set autoread                " Sets to auto read when a file is changed externally.
        set mouse=a                 " Enable the use of a mouse.
        if WINDOWS()                " Use the system clipboard by as the default.
            set clipboard=unnamed
        elseif LINUX()
            set clipboard=unnamedplus
        endif
        set number                  " Include line numbers by default.
        set scrolloff=1             " Minimal number of screen lines to keep above/below the cursor.
        set cursorline              " Draws a horizontal line/highlight on your current line.
        set showmatch               " Highlights matching [{()}].
        set wildmenu                " Visual autocomplete for command menu.
        colorscheme molokai
        if LINUX() && has('gui_running')
            set guifont=Hack\ 13            " Required for gvim.
        elseif WINDOWS() && has('gui_running')
            set guifont=Hack:h12
        endif
        let g:molokai_original = 0  " Original Theme looks more like Monokai, i.e., ugly.
        let g:rehash245 = 1
        "colorscheme solarized
        "set background=dark         " Required for solarized (dark).

        "let mapleader=','               " Change from the default '\' to ','.

        " Overwrite write-protected files.
        cmap w!! w !sudo tee % >/dev/null

    " }
    " Buffer Management {
        map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>
    " }
    " Code Folding {
        set foldenable              " Enable code folding.
        " set foldlevelstart=10     " Open most folds by default.
        noremap <space> za          " Open/close folds using the spacebar.
        let g:vimtex_fold_enabled=1
    " }
    " Movement {
        " Move vertically up/down by visual line (when wrapping is enabled).
        nnoremap <silent> j gj
        nnoremap <silent> k gk
    " }
    " Searching {
        set incsearch               " Searches for words as characters are entered.
        set hlsearch                " Highlight all matches while searching.
        set ignorecase              " Ignore case in search patterns....
        set smartcase               " ...unless the pattern contains uppercase.
        " Turn off search highlight when finished.
        nnoremap <leader><space> :nohlsearch<CR>
        set magic                   " Enable regular expressions.
    " }
    " Syntax Highlighting {
        syntax enable               " Enable syntax highlighting.
    " }
" }
" Plugin-Specific Settings {
    " Airline {
        let g:airline_powerline_fonts = 1
        set laststatus=2            " Ensure airline is always shown.
    " }
    " NERDTree {
        map <leader>nt :NERDTreeToggle<CR>   " Toggle the NERDTree with Ctrl+t.
        map <leader>nf :NERDTreeFind<CR> " Locate the current file in NERDTree.
        let NERDTreeShowBookmarks=1
        let NERDTreeShowHidden=1
        let NERDTreeIgnore=['\.swp$']
        let g:NERDTreeDirArrowExpandable = '▸'     " Default on linux.
        let g:NERDTreeDirArrowCollapsible = '▾'    " Default on Linux.
        let g:NERDTreeSortOrder = ['[[-timestamp]]']
    " }
    " SQL Utilities {
        "let g:sqlutil_align_comma=1
        "let g:sqlutil_align_keyword_right=0
    " }
    " Tagbar {
        autocmd VimEnter * unmap <Leader>tt
        autocmd VimEnter * nnoremap <leader>tt :TagbarToggle<CR>
    " }
    " Vimwiki {
        "let g:vimwiki_list_ignore_newline=0
    " }
    " YouCompleteMe {
        "if !exists('g:ycm_semantic_triggers')
            "let g:ycm_semantic_triggers = {}
        "endif
        "let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme
    " }
" }
" Langauge-Specific Settings {
    " Python {
        if WINDOWS()
            set pythonthreedll=python37.dll
        endif
    " }
" }

" To save cursor position.
augroup resCur
    autocmd!
    autocmd BufReadPost * call setpos(".",getpos("'\""))
augroup END

" Open/close procedures.
"autocmd VimEnter * source ~/Session.vim         " Open the prior session.
autocmd VimEnter * NERDTree                     " Start the NERDTree.
autocmd VimLeavePre * NERDTreeClose             " Close the NerdTree.
"autocmd VimLeave * mksession! ~/Session.vim     " Save the session.
