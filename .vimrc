set nocompatible              	"We want the latest vim settings/options

so ~/.vim/plugins.vim



syntax enable
set number			"Let's activate line numbers
let mapleader = ','		"The deafult leader is \ but a comma is much better




"-------------Esc Button------------"

"Let's decrease pressur on esc button
imap <F2> <Esc>

	



"-------------Visuals------------"
colorscheme atom-dark-256


set guioptions-=l				"Disable GUI scrollbar
set guioptions-=L
set guioptions-=r
set guioptions-=R





"-------------Search------------"
set hlsearch
set incsearch





"-------------Split Management------------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>







"-------------Mappings------------"

"Make it easy to edit the vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highliht removal.
nmap <Leader><space> :nohlsearch<cr>

"Make NERDTree easier toggle.
nmap <C-n> :NERDTreeToggle<CR>

"Search methodss in a file using CtrlP.
nmap <C-R> :CtrlPBufTag<cr>

"Open most recent used files.
nmap <C-e> :CtrlPMRUFiles<cr>

"Search methods in whole site using ctags.
nmap <Leader>f :tag<space>




"-------------Plugins------------"
"/
"/NERDTree
"/
let NERDTreeHijackNetrw = 0


"/
"/CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'


"/
"/Ack.vim
"/							"Use Ack.vim with silversearcher-ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


"/
"/Greplace.vim
"/
set grepprg=ag						 "We want to use ag for search

let g:grep_cmd_opts = '--line-numbers --noheading'





"----------Auto Commands----------"

"Automatically source the vimrc file on save.

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
