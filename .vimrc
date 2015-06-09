" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" change tab to 2 spaces
set tabstop=2 softtabstop=2 shiftwidth=2
" set smartindent
"set tabstop = 2
"set shiftwidth = 2
"set expandtab

" js/css/ejs files set to 2
autocmd Filetype js  setlocal ts=2 sts=2 sw=2
autocmd Filetype css setlocal ts=2 sts=2 sw=2
autocmd Filetype ejs setlocal ts=2 sts=2 sw=2

" show line number
set number

" hightlight current line by color
" color desert
" set cursorline
" hi CursorLine term=bold cterm=bold guibg=Grey40

" hightlight current line by a line
" au WinLeave * set nocursorline nocursorcolumn
" au WinLeave * set nocursorline nocursorcolumn
 au WinEnter * set cursorline
 au WinEnter * set cursorline 
 set cursorline 
 hi CursorLine term=bold cterm=bold ctermbg=black guibg=Grey40

" word completion
" set dictionary=/usr/share/dict/words

" spelling check
" set spell spelllang=en_us
" let spell_auto_type = ".tex"

" pathogen
call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

" toggle paste (`set paste` pasting code `set nopaste`)
set pastetoggle=

" vertical line indentation
let g:indentLine_color_term = 2
let g:indentLine_color_gui = '#09AA08'
" let g:indentLine_char = '│'

" automatic closing of quotes, parenthesis, brackets, etc
let delimitMate_expand_cr = 1

let NERDTreeShowBookmarks=1
nmap <leader>d :NERDTreeToggle<CR>



