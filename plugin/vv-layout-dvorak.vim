"键盘上有很多反人类键，例如dvorak键位下的 'f'，'x', 'l', '/', '='，这些按键要么在快速
"输入时需要大范围移动手指（f, x），要么频繁使用小指（l, /, =, 三个按键全是一个小指），
"映射时应尽量避免使这些按键

""""""""""""""""""""""""""""""
"normal
""""""""""""""""""""""""""""""
noremap \ <leader>

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

nmap <leader>eh <Plug>(easymotion-linebackward)
nmap <leader>et <Plug>(easymotion-k)
nmap <leader>en <Plug>(easymotion-j)
nmap <leader>es <Plug>(easymotion-lineforward)
nmap <leader>. <Plug>(easymotion-s)
nmap <leader><leader>. <Plug>(easymotion-sn)
vmap <leader>eh <Plug>(easymotion-linebackward)
vmap <leader>et <Plug>(easymotion-k)
vmap <leader>en <Plug>(easymotion-j)
vmap <leader>es <Plug>(easymotion-lineforward)
vmap <leader>. <Plug>(easymotion-s)
vmap <leader><leader>. <Plug>(easymotion-sn)
omap <leader>eh <Plug>(easymotion-linebackward)
omap <leader>et <Plug>(easymotion-k)
omap <leader>en <Plug>(easymotion-j)
omap <leader>es <Plug>(easymotion-lineforward)
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

noremap <leader>y :let @*=@*.getline('.')."\n"<CR>

""""""""""""""""""""""""""""""
"Floaterm
""""""""""""""""""""""""""""""
noremap <leader><leader>n :FloatermNew<CR>
noremap <leader><leader>h :FloatermHide<CR>
noremap <leader><leader>s :FloatermShow<CR>
noremap <leader><leader>l :FloatermNext<CR>
noremap <leader><leader>L :FloatermPrev<CR>
noremap <leader><leader>i :FloatermNew

""""""""""""""""""""""""""""""
"make 
""""""""""""""""""""""""""""""
noremap <F5> :make<CR>

""""""""""""""""""""""""""""""
"ranger
""""""""""""""""""""""""""""""
nmap <leader>o :RangerNewTab<CR>
nmap <leader>a :Ranger<CR>
omap <leader>o :RangerNewTab<CR>
omap <leader>a :Ranger<CR>
vmap <leader>o :RangerNewTab<CR>
vmap <leader>a :Ranger<CR>

""""""""""""""""""""""""""""""
"coc
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

