
if exists("g:loaded_setSearch")
  finish
endif
let g:loaded_setSearch = 1

let s:save_cpo = &cpo
set cpo&vim


" incremantal search
set incsearch

set ignorecase
set smartcase

" no need escape meta char
set nomagic

" centering find position.
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz
nmap G Gzz

" clear hilight
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" search option
noremap <expr> <C-b> max([winheight(0) - 2, 1]) . "\<C-u>" . (line('.') < 1         + winheight(0) ? 'H' : 'L')
noremap <expr> <C-f> max([winheight(0) - 2, 1]) . "\<C-d>" . (line('.') > line('$') - winheight(0) ? 'L' : 'H')
noremap <expr> <C-y> (line('w0') <= 1         ? 'k' : "\<C-y>")
noremap <expr> <C-e> (line('w$') >= line('$') ? 'j' : "\<C-e>")


let &cpo = s:save_cpo
unlet s:save_cpo
