set nocompatible              						"We want the latest vim settings/options

so ~/.vim/plugins.vim



syntax enable
set number								"Let's activate line numbers
let mapleader = ','							"The deafult leader is \ but a comma is much better
set autowriteall  							"Automatically write the file when switching buffers.
set complete=.,w,b,u 							"Set our desired autocomplition matching.

set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4


"Macro for constructor
let @a="yiw/}O$this->pa = $pa;?constructOprotected $pa;/construct/\", "





"-------------Esc Button------------"

"Let's decrease pressur on esc button
imap <F2> <Esc>

	



"-------------Visuals------------"
colorscheme atom-dark-256

"Add simple highliht removal.
nmap <Leader><space> :nohlsearch<cr>





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

"redo changes
nmap <Leader>r :redo<cr>

"Make it easy to edit the vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Make it easy to edit snippet files.
nmap <Leader>es :e ~/.vim/snippets/

"Search methods in whole site using ctags.
nmap <Leader>f :tag<space>

"php-cs-fixer
nmap <leader>pf :silent !php-cs-fixer fix "%" --rules=@PSR2<cr> :e!<cr>



"-------------Plugins------------"
"/
"/NERDTree
"/
let NERDTreeHijackNetrw = 0

"Make NERDTree easier toggle.
nmap <C-n> :NERDTreeToggle<CR>



"/
"/CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"Search methods in a file using CtrlP.
nmap <C-R> :CtrlPBufTag<cr>

"Open most recent used files.
nmap <C-e> :CtrlPMRUFiles<cr>



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



"/
"/vim-php-namespace
"/
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>uf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>uf :call PhpExpandClass()<CR>

"Sort PHP use statements
"http://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>



"/
"/Syntastic
"/
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



"/
"/vim-vue-pluin
"/
let g:vim_vue_plugin_load_full_syntax = 1








"----------Laravel Specific----------"
nmap <Leader>la :e routes/api.php<cr>
nmap <Leader>lm :!php artisan make:
nmap <Leader><Leader>c :CtrlP<cr>app/Http/Controllers/
nmap <Leader><Leader>m :CtrlP<cr>app/
nmap <Leader><Leader>v :e resources/views/<cr>





"----------Auto Commands----------"

"Automatically source the vimrc file on save.

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
