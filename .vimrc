" vim: set foldmarker={,} foldmethod=marker:
set nocompatible            " Required for advanced Vim features to work.
set encoding=utf-8          " Required for Airline/YouCompleteMe/Windows.

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
        Plugin 'mileszs/ack.vim'                    " Ack usage from inside vim.
        "Plugin 'ap/vim-buftabline'                 " Uses the tabline to create (non-clickable) tabs representing buffers.
        "Plugin 'gertjanreynaert/cobalt2-vim-theme'
        Plugin 'raimondi/delimitmate'               " Insert mode auto-completion of delimiters.
        "Plugin 'SQLUtilities'                       " SQL Formatter and query generator.
        "Plugin 'tbabej/taskwiki'                   " Task management combining TaskWarrier and vimwiki.
        Plugin 'altercation/vim-colors-solarized'
        Plugin 'tpope/vim-dadbod'                   " A modern take on dbext.
        "Plugin 'xolox/vim-easytags'                " Tag Generator
        Plugin 'airblade/vim-gitgutter'             " Shows git diff in the gutter.
        Plugin 'suan/vim-instant-markdown'          " HTML-preview of Markdown files.
        Plugin 'xuhdev/vim-latex-live-preview'      " Automatic PDF generation on save.
        Plugin 'severin-lemaignan/vim-minimap'      " Sublime-like minimap.
        "Plugin 'xolox/vim-misc'                    " Required for vim-easytags
        "Plugin 'MS-SQL-Server-Syntax'              " T-SQL Syntax highlighting.
        Plugin 'tpope/vim-obsession'                " Continuously updated session files.
        Plugin 'kshenoy/vim-signature'              " Toggle, display, and navigate marks.
        "Plugin 'vbnet.vim'                         " Syntax-highlighting for VB.NET. Not that great?
        Plugin 'rakr/vim-one'
        Plugin 'nlknguyen/papercolor-theme'
        "Plugin 'powerline/powerline'               " Statusline plugin.  See also: Airline.
        Plugin 'tpope/vim-unimpaired'
        Plugin 'pprovost/vim-ps1'                   " Syntax-highlighting for PowerShell.
        Plugin 'honza/vim-snippets'                 " Standard snippet library.
        Plugin 'lervag/vimtex'                      " A modern LaTeX implementation. See also: vim-latex(suite)
        Plugin 'vimwiki/vimwiki'                    " Personal Wiki.
        "Plugin 'thaerkh/vim-workspace'             " Automated session management.
        "Plugin 'valloric/youcompleteme'            " Code-completion engine for C(++), Python, C#, Java, JavaScript and more.
    " }
    " Arch Repo Orphans {
        Plugin 'tomasr/molokai'
        Plugin 'scrooloose/nerdtree'                " File explorer.
    " }
    " Plugins provided by the Arch repos. {
        if WINDOWS()
            Plugin 'bling/vim-airline'              " Lightweight statusline & tabline.
            Plugin 'vim-airline/vim-airline-themes'
            Plugin 'w0rp/ale'                       " Asynchronous lint/syntax engine. See also: syntastics.
            Plugin 'Align'                          " Aligns text, equations, tables, etc.
            Plugin 'ctrlpvim/ctrlp.vim'             " Fuzzy file, buffer, mru, & tag finder.
            Plugin 'easymotion/vim-easymotion'
            Plugin 'tpope/vim-fugitive'             " Git wrapper.
            "Plugin 'davidhalter/jedi-vim'          " Python autocompletion library.
            "Plugin 'nanotech/jellybeans.vim'
            "Plugin 'vim-latex/vim-latex'           " LaTeX support. See also: vimtex.
            "Plugin 'fholgado/minibufexpl.vim'      " Clickable buffer explorer.
            Plugin 'scrooloose/nerdcommenter'       " Commenting functions.
            "Plugin 'shemerey/vim-project'          " Organize/navigate projects of files.
            "Plugin 'ervandew/supertab'             " Insert-mode completion with <Tab>.  Annoying for spacing issues.
            Plugin 'tpope/vim-surround'             " Easily change existing 'surrounding' of text.  Not that useful?
            Plugin 'scrooloose/syntastic'           " Syntax/lint engine. See also: ale.
            Plugin 'majutsushi/tagbar'              " On-the-fly tag creater and viewer.
            Plugin 'SirVer/ultisnips'               " Python-based snippet engine. See also: vim-snipmate.
            Plugin 'vcscommand.vim'                 " CVS/SVN/git/hg/bzr integration.
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
        set nowrap                  " Disables line-wrapping.
        set showmatch               " Highlights matching [{()}].
        set wildmenu                " Visual autocomplete for command menu.
        colorscheme molokai
        "colorscheme PaperColor
        if LINUX() && has('gui_running')
            set guifont=Hack\ 13            " Required for gvim.
        elseif WINDOWS() && has('gui_running')
            set guifont=Hack:h12
        endif
        let g:molokai_original = 0  " Original Theme looks more like Monokai, i.e., ugly.
        let g:rehash245 = 1
        "colorscheme solarized
        "set background=dark         " Required for solarized (dark).
        "set background=light       " Required for the light PaperColor theme.

        "let mapleader=','               " Change from the default '\' to ','.

        " Overwrite write-protected files.
        cmap w!! w !sudo tee % >/dev/null

        " Faster saving.
        nmap <leader>w :w!<cr>

    " }
    " Buffer Management {
        set hidden              " Allow buffer switching withoutsaving.
        map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>
        "nmap <tab> :bn<CR>
        "nmap <S-tab> :bp<CR>
        "nmap <C-n> :bn<CR>
        "nmap <C-p> :bp<CR>
    " }
    " Files {
        nmap <leader>v :edit $MYVIMRC<CR>
        " Source the vimrc file after saving it
        if has("autocmd")
          autocmd bufwritepost .vimrc source $MYVIMRC
        endif
    " }
    " Session Management {
        let g:sessions_dir = '$HOME/vim-sessions'
        exec 'nnoremap <Leader>so :source ' . g:sessions_dir . '/*.vim<C-D><BS><BS><BS><BS><BS>'
    " }
    " Code Folding {
        set foldenable              " Enable code folding.
        " set foldlevelstart=10     " Open most folds by default.
        noremap <space> za          " Open/close folds using the spacebar.
        let g:vimtex_fold_enabled=1
    " }
    " Diffs {
        nnoremap <leader>dt :diffthis<cr>
        nnoremap <leader>do :diffoff<cr>
    " }
    " Movement {
        " Move vertically up/down by visual line (when wrapping is enabled).
        nnoremap <silent> j gj
        nnoremap <silent> k gk

        "Easier window switching.
        map <tab> <C-W>w
        "map <tab><tab> <C-W><C-W>
        map <C-j> <C-W>j
        map <C-k> <C-W>k
        map <C-h> <C-W>h
        map <C-l> <C-W>l
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
        " Use Airline's built-in buffer line (like buftabline.)
        let g:airline#extensions#tabline#enabled = 1
        " Make the tabline display sensible.
        let g:airline#extensions#tabline#formatter = 'unique_tail'
        " Use vertical tab separators instead of the default angled ones.
        let g:airline#extensions#tabline#left_sep = ' '
        let g:airline#extensions#tabline#left_alt_sep = '|'
        "let g:airline#extensions#branch#use_vcscommand = 1
        set laststatus=2            " Ensure airline is always shown.
    " }
    " CTRL-P {
        let g:ctrlp_follow_symlinks = 1     " Mostly for Linux.
        let g:ctrlp_by_filename = 1         " Don't search full path; only filename.
        let g:ctrlp_regexp = 1
        let g:ctrlp_show_hidden = 1
        "let g:ctrlp_map = '<leader>cp'
        let g:ctrlp_types = ['buf', 'mru', 'fil']
    " }
    " Fugitive {
        nnoremap <silent> <leader>gs :Gstatus<CR>
        nnoremap <silent> <leader>gd :Gdiff<CR>
        nnoremap <silent> <leader>gc :Gcommit<CR>
        nnoremap <silent> <leader>gb :Gblame<CR>
        nnoremap <silent> <leader>gl :Glog<CR>
        nnoremap <silent> <leader>gp :Git push<CR>
        nnoremap <silent> <leader>gr :Gread<CR>
        nnoremap <silent> <leader>gw :Gwrite<CR>
        nnoremap <silent> <leader>ge :Gedit<CR>
        " Mnemonic _i_nteractive
        nnoremap <silent> <leader>gi :Git add -p %<CR>
    " }
    " NERDTree {
        map <leader>nt :NERDTreeToggle<CR>   " Toggle the NERDTree with Ctrl+t.
        map <leader>nf :NERDTreeFind<CR> " Locate the current file in NERDTree.
        let NERDTreeShowBookmarks=1
        let NERDTreeShowHidden=1
        let NERDTreeIgnore=['\.swp$']
        let NERDTreeQuitOnOpen = 1
        let g:NERDTreeDirArrowExpandable = '▸'     " Default on linux.
        let g:NERDTreeDirArrowCollapsible = '▾'    " Default on Linux.
        let g:NERDTreeSortOrder = ['[[-timestamp]]']
    " }
    " SQL Utilities {
        let g:sqlutil_align_comma=1
        let g:sqlutil_align_keyword_right=0
    " }
    " SuperTab {
        let g:SuperTabCRMapping = 1
    " }
    " Tagbar {
        autocmd VimEnter * unmap <Leader>tt
        autocmd VimEnter * nnoremap <leader>tt :TagbarToggle<CR>
    " }
    " UltiSnips {
        let g:UltiSnipsExpandTrigger="<tab>"
        let g:UltiSnipsJumpForwardTrigger="<c-b>"
        let g:UltiSnipsJumpBackwardTrigger="<c-z>"
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

" Automatically trim white space at the end of lines for certain file types
" (NOT md).
autocmd FileType sql,vb,cs autocmd BufWritePre <buffer> %s/\s\+$//e

" Open/close procedures.
"autocmd VimEnter * source ~/Session.vim         " Open the prior session.
"autocmd VimEnter * NERDTree                     " Start the NERDTree.
"autocmd VimLeavePre * NERDTreeClose             " Close the NerdTree.
"autocmd VimLeave * mksession! ~/Session.vim     " Save the session.
