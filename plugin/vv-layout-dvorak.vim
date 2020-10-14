"键盘上有很多反人类键，例如dvorak键位下的 'f'，'x', 'l', '/', '='，这些按键要么在快速
"输入时需要大范围移动手指（f, x），要么频繁使用小指（l, /, =, 三个按键全是一个小指），
"映射时应尽量避免使这些按键

""""""""""""""""""""""""""""""
" normal
""""""""""""""""""""""""""""""
map \ <leader>

noremap t k
noremap n j
noremap s l

noremap T K
noremap S L
noremap N J

noremap l n
noremap L N

noremap j 12<c-y>
noremap k 12<c-e>

noremap b c
noremap c gT
noremap r gt

noremap <ScrollWheelUp> <C-Y><C-Y><C-Y><C-Y>
noremap <ScrollWheelDown> <C-E><C-E><C-E><C-E>
inoremap <ScrollWheelUp> <C-Y><C-Y><C-Y><C-Y>
inoremap <ScrollWheelDown> <C-E><C-E><C-E><C-E>

noremap [ [[
noremap ] ]]

noremap <C-t> :tabnew .<CR>
noremap <C-c> :q<CR>
noremap <C-e> <C-i>
inoremap <C-t> <ESC>:tabnew .<CR>:e 
inoremap <C-l> <ESC>:e 
inoremap <C-c> <ESC>:q<CR>

noremap R :source $MYVIMRC<CR>

nnoremap <leader><CR> <C-]>
vnoremap <leader><CR> <C-]>

noremap <leader>- $
noremap <leader>d ^
noremap <leader>2 [[
noremap <leader>3 ]]

nmap <leader>uh <Plug>(easymotion-linebackward)
nmap <leader>ut <Plug>(easymotion-k)
nmap <leader>un <Plug>(easymotion-j)
nmap <leader>us <Plug>(easymotion-lineforward)
nmap <leader>. <Plug>(easymotion-s)
nmap <leader><leader>. <Plug>(easymotion-sn)
vmap <leader>uh <Plug>(easymotion-linebackward)
vmap <leader>ut <Plug>(easymotion-k)
vmap <leader>un <Plug>(easymotion-j)
vmap <leader>us <Plug>(easymotion-lineforward)
vmap <leader>. <Plug>(easymotion-s)
vmap <leader><leader>. <Plug>(easymotion-sn)
omap <leader>uh <Plug>(easymotion-linebackward)
omap <leader>ut <Plug>(easymotion-k)
omap <leader>un <Plug>(easymotion-j)
omap <leader>us <Plug>(easymotion-lineforward)
omap <leader>. <Plug>(easymotion-s)
omap <leader><leader>. <Plug>(easymotion-sn)

nmap <leader>g <Plug>(easymotion-sl)
vmap <leader>g <Plug>(easymotion-sl)
omap <leader>g <Plug>(easymotion-sl)

noremap <leader>; :TlistToggle<CR>
noremap <leader>q :NERDTreeToggle<CR>
noremap <leader>k :GundoToggle<CR>

nmap . <Plug>(choosewin)

nmap <leader><SPACE> <Plug>(wildfire-fuel)
vmap <SPACE> <Plug>(wildfire-fuel)
vmap <leader><SPACE> <Plug>(wildfire-water)
vmap <s-SPACE> <Plug>(wildfire-water)

function! CopyAppend()
    if g:with_x11 == 1
        let @*=@*.getline('.')."\n"
    else
        let @" .= getline('.')."\n"
    endif
endfunction

function! CutAppend()
    if g:with_x11 == 1
        let @*=@*.getline('.')."\n"
    else
        let @" .= getline('.')."\n"
    endif
    execute "delete _"
endfunction

nnoremap <leader>yy :call CopyAppend()<CR>
vnoremap <leader>yy :call CopyAppend()<CR>
nnoremap <leader>yd :call CutAppend()<CR>
vnoremap <leader>yd :call CutAppend()<CR>

hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

""""""""""""""""""""""""""""""
" Floaterm
""""""""""""""""""""""""""""""
noremap <leader><leader>n :FloatermNew<CR>
noremap <leader><leader>h :FloatermHide<CR>
noremap <leader><leader>s :FloatermShow<CR>
noremap <leader><leader>l :FloatermNext<CR>
noremap <leader><leader>L :FloatermPrev<CR>
noremap <leader><leader>i :FloatermNew

inoremap <C-BS> <C-W>

""""""""""""""""""""""""""""""
" make 
""""""""""""""""""""""""""""""
nnoremap <F4> :Make<CR>
nnoremap <F2> :Copen<CR>

""""""""""""""""""""""""""""""
" ranger
""""""""""""""""""""""""""""""
nmap <leader>o :RangerNewTab<CR>
nmap <leader>a :Ranger<CR>
omap <leader>o :RangerNewTab<CR>
omap <leader>a :Ranger<CR>
vmap <leader>o :RangerNewTab<CR>
vmap <leader>a :Ranger<CR>
nmap <leader>e :tabnew<CR>:Files<CR>
omap <leader>e :tabnew<CR>:Files<CR>
vmap <leader>e :tabnew<CR>:Files<CR>

""""""""""""""""""""""""""""""
" coc
""""""""""""""""""""""""""""""
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <NUL> coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

""""""""""""""""""""""""""""""
" vim-linemovement
""""""""""""""""""""""""""""""
let g:linemovement_up="<c-s-t>"
let g:linemovement_down="<c-s-n>"

""""""""""""""""""""""""""""""
" vim-surround
""""""""""""""""""""""""""""""
nmap ds  <Plug>Dsurround
nmap bs  <Plug>Csurround
nmap bS  <Plug>CSurround
nmap ys  <Plug>Ysurround
nmap yS  <Plug>YSurround
nmap yss <Plug>Yssurround
nmap ySs <Plug>YSsurround
nmap ySS <Plug>YSsurround
xmap S   <Plug>VSurround
xmap gS  <Plug>VgSurround
