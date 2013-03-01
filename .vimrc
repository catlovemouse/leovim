"vim +BundleInstall +qall

syntax on
set hlsearch
"set cursorline

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set ruler

au BufNewFile,BufRead  *.tmp set filetype=html

set nocompatible               " be iMproved
"filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

nmap <F8> :TagbarToggle<CR>
nmap <F3> :r! date \+\%F\ \%T <CR>


" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'ervandew/supertab'
Bundle 'mitechie/pyflakes-pathogen'
Bundle 'vim-scripts/pep8'

Bundle 'mattn/calendar-vim'

" My Bundles here:
"
" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/nerdtree.git'
"Bundle 'scrooloose/syntastic.git'
Bundle 'majutsushi/tagbar'
Bundle 'fs111/pydoc.vim'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
"filetype plugin on     " required!
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

set foldmethod=indent
set foldlevel=99

let g:pep8_map='<leader>7'
let g:pyflakes_use_quickfix = 1

"au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
"au BufEnter *.org call org#SetOrgFileType()
"let g:org_command_for_emacsclient = emacsclient
"let g:org_todo_setup='TODO STARTED | DONE'

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

