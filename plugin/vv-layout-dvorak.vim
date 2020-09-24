"键盘上有很多反人类键，例如dvorak键位下的 'f'，'x', 'l', '/', '='，这些按键要么在快速
"输入时需要大范围移动手指（f, x），要么频繁使用小指（l, /, =, 三个按键全是一个小指），
"映射时应尽量避免使这些按键

"
nmap \ <leader>
vmap \ <leader>

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

noremap <C-t> :tabnew .<CR>:e 
"noremap <C-l> :e 
noremap <C-c> :q<CR>
noremap <C-e> <C-i>
inoremap <C-t> <ESC>:tabnew .<CR>:e 
inoremap <C-l> <ESC>:e 
inoremap <C-c> <ESC>:q<CR>

noremap R :source $MYVIMRC<CR>

noremap <leader><CR> <C-]>

noremap <leader>- $
noremap <leader>d ^
noremap <leader>2 [[
noremap <leader>3 ]]

map <leader>h <Plug>(easymotion-linebackward)
map <leader>t <Plug>(easymotion-k)
map <leader>n <Plug>(easymotion-j)
map <leader>s <Plug>(easymotion-lineforward)

map <leader>. <Plug>(easymotion-s)
map <leader><leader>. <Plug>(easymotion-sn)

map <leader>g <Plug>(easymotion-sl)

noremap <leader>; :TlistToggle<CR>
noremap <leader>q :NERDTreeToggle<CR>
noremap <leader>k :GundoToggle<CR>

nmap . <Plug>(choosewin)

nmap <leader><SPACE> <Plug>(wildfire-fuel)
vmap <SPACE> <Plug>(wildfire-fuel)
vmap <leader><SPACE> <Plug>(wildfire-water)

noremap <leader><leader>n :FloatermNew<CR>
noremap <leader><leader>h :FloatermHide<CR>
noremap <leader><leader>s :FloatermShow<CR>
noremap <leader><leader>l :FloatermNext<CR>
noremap <leader><leader>L :FloatermPrev<CR>
noremap <leader><leader>i :FloatermNew

inoremap <C-BS> <C-W>

"make 
nnoremap <F5> :Make<CR>
nnoremap <F6> :Copen<CR>

"ranger
nmap <leader>o :RangerNewTab<CR>
nmap <leader>a :Ranger<CR>

"coc
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

