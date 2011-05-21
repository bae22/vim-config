" Needed on some linux distros.
" see http://www.adamlowe.me/2009/12/vim-destroys-all-other-rails-editors.html

set nocompatible

" Call the pathogen plugin
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" Enable filetype stuff
filetype on
filetype indent plugin on
syntax enable
scriptencoding utf-8
set history=1000  				    " Store a ton of history (default is 20)

" Check for GUI
if has('gui_running')
    set background=dark
else
    set background=dark
endif

" Vim UI {
    set t_Co=16                     " Set the terminal colours to 16
    let g:solarized_termcolors=16   " Set solarized to use 16 colours
    colorscheme solarized           " Use the solarized colour scheme
	set tabpagemax=15 			    " only show 15 tabs
	set showmode 				    " display the current mode
	set linespace=0 			    " No extra spaces between rows
	set nu 				    	    " Line numbers on
	set showmatch				    " show matching brackets/parenthesis
	set hlsearch				    " highlight search terms
	set ignorecase 				    " case insensitive search
	set wildmenu 				    " show list instead of just completing
	set wildmode=list:longest,full 		" command <Tab> completion, list matches, then longest common part, then all.
	set scrolljump=5 			    " lines to scroll when cursor leaves screen
	set scrolloff=3 			    " minimum lines to keep above and below cursor
	set foldenable 				    " auto fold code
    set laststatus=2                " force vim to always show the status line
    set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P    " Show git branch in the status line
"  }

" Formatting {
	set nowrap				        " wrap long lines
	set shiftwidth=4			    " use indents of 4 spaces
	set expandtab				    " tabs are spaces, not tabs
	set tabstop=4				    " an indentation every four columns
	set softtabstop=4			    " let backspace delete indent
	set pastetoggle=<F12>		    " pastetoggle (sane indentation on pastes)
	" Remove trailing whitespaces and ^M chars
	autocmd FileType c,cpp,java,php,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
" }

" Key (re)Mappings {
	" Easier moving in tabs and windows
	map <C-J> <C-W>j<C-W>_
	map <C-K> <C-W>k<C-W>_
	map <C-L> <C-W>l<C-W>_
	map <C-H> <C-W>h<C-W>_
	map <C-K> <C-W>k<C-W>_

	""" Code folding options
	nmap <leader>f0 :set foldlevel=0<CR>
	nmap <leader>f1 :set foldlevel=1<CR>
	nmap <leader>f2 :set foldlevel=2<CR>
	nmap <leader>f3 :set foldlevel=3<CR>
	nmap <leader>f4 :set foldlevel=4<CR>
	nmap <leader>f5 :set foldlevel=5<CR>
	nmap <leader>f6 :set foldlevel=6<CR>
	nmap <leader>f7 :set foldlevel=7<CR>
	nmap <leader>f8 :set foldlevel=8<CR>
	nmap <leader>f9 :set foldlevel=9<CR>
" }

" Plugins {

	" Supertab {
		let g:SuperTabDefaultCompletionType = "context"
		let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
	" }
	" easymotion {
		let g:EasyMotion_leader_key = '<Leader>m' 		" change the leader to \m to avoid keymappings clashing with command-t plugin. 
	" }
	" NerdTree {
		map <C-x> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
		map <leader>e :NERDTreeFind<CR>
		nmap <leader>nt :NERDTreeFind<CR>

		let NERDTreeShowBookmarks=1
		let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
		let NERDTreeChDirMode=0
		let NERDTreeQuitOnOpen=1
		let NERDTreeShowHidden=1
		let NERDTreeKeepTreeInNewTab=1
	" }
" }
