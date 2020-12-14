"键盘上有很多反人类键，例如dvorak键位下的 'f'，'x', 'l', '/', '='，这些按键要么在快速
"输入时需要大范围移动手指（f, x），要么频繁使用小指（l, /, =, 三个按键全是一个小指），
"映射时应尽量避免使这些按键

""""""""""""""""""""""""""""""
" normal
""""""""""""""""""""""""""""""
map \ <leader>

tnoremap <C-h> <C-\><C-n>

noremap <c-h> b
noremap <c-s> w

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
noremap r :bnext<CR>
noremap c :bprev<CR>

noremap <ScrollWheelUp> <C-Y><C-Y><C-Y><C-Y>
noremap <ScrollWheelDown> <C-E><C-E><C-E><C-E>
inoremap <ScrollWheelUp> <C-Y><C-Y><C-Y><C-Y>
inoremap <ScrollWheelDown> <C-E><C-E><C-E><C-E>

noremap [ [[
noremap ] ]]

noremap <C-e> <C-i>

noremap R :source $MYVIMRC<CR>

noremap <leader>- $
noremap <leader>d ^
noremap <leader>b [[
noremap <leader>m ]]

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

noremap <leader>; :TlistToggle<CR>
noremap <leader>q :NERDTreeToggle<CR>
noremap <leader>j :GundoToggle<CR>

nmap . <Plug>(choosewin)
noremap > .
noremap < ,

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

nnoremap <Leader>C :set cursorline! cursorcolumn!<CR>

nnoremap <leader>/ VHoL<Esc>``/\%V
nnoremap <leader>* VHoL<Esc>``/\%V<C-r><C-w><CR>

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
inoremap  <C-W>


""""""""""""""""""""""""""""""
" make 
""""""""""""""""""""""""""""""
nnoremap <F4> :Make -j `nproc`<CR>
nnoremap <F2> :Copen<CR>

""""""""""""""""""""""""""""""
" ranger
""""""""""""""""""""""""""""""
"nmap <leader>o :RangerNewTab<CR>
"nmap <leader>a :Ranger<CR>
"omap <leader>o :RangerNewTab<CR>
"omap <leader>a :Ranger<CR>
"vmap <leader>o :RangerNewTab<CR>
"vmap <leader>a :Ranger<CR>
"nmap <leader>e :tabnew<CR>:Files<CR>
"omap <leader>e :tabnew<CR>:Files<CR>
"vmap <leader>e :tabnew<CR>:Files<CR>

nmap <leader>a :Ranger<CR>
omap <leader>a :Ranger<CR>
vmap <leader>a :Ranger<CR>
nmap <leader>e :Files<CR>
omap <leader>e :Files<CR>
vmap <leader>e :Files<CR>

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

nnoremap <leader><Tab> :call CocAction('jumpDefinition', 'drop')<CR>
vnoremap <leader><Tab> :call CocAction('jumpDefinition', 'drop')<CR>

nnoremap <leader><CR> :call CocAction('jumpDefinition', 'split')<CR>
vnoremap <leader><CR> :call CocAction('jumpDefinition', 'split')<CR>

nmap bnn <Plug>(coc-diagnostic-next-error)
nmap bpp <Plug>(coc-diagnostic-prev-error)

nmap bna <Plug>(coc-diagnostic-next)
nmap bpa <Plug>(coc-diagnostic-prev)

nmap bii <Plug>(coc-diagnostic-info)
nmap b== <Plug>(coc-format-selected)
vmap b== <Plug>(coc-format-selected)

nmap b=a <Plug>(coc-format)

""""""""""""""""""""""""""""""
" vim-linemovement
""""""""""""""""""""""""""""""
let g:linemovement_up="<c-j>"
let g:linemovement_down="<c-k>"

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


""""""""""""""""""""""""""""""
" vim-visual-multi
""""""""""""""""""""""""""""""
let g:VM_maps['j'] = 'n'
let g:VM_maps['J'] = 'N'
let g:VM_maps['k'] = 't'
let g:VM_maps['K'] = 'T'
let g:VM_maps['l'] = 's'
let g:VM_maps['L'] = 'S'
let g:VM_maps['c'] = 'b'
let g:VM_maps['C'] = 'B'

let g:VM_maps["Select Operator"] = 'gs'
let g:VM_maps['Find Under']                  = '<C-n>'
let g:VM_maps['Find Subword Under']          = '<C-n>'
let g:VM_maps["Select All"]                  = '\A' 
let g:VM_maps["Start Regex Search"]          = '\/'
let g:VM_maps["Add Cursor Down"]             = '<C-Down>'
let g:VM_maps["Add Cursor Up"]               = '<C-Up>'
let g:VM_maps["Add Cursor At Pos"]           = '\\'

let g:VM_maps["Visual Regex"]                = '\/'
let g:VM_maps["Visual All"]                  = '\A' 
let g:VM_maps["Visual Add"]                  = '\a'
let g:VM_maps["Visual Find"]                 = '\f'
let g:VM_maps["Visual Cursors"]              = '\c'
let g:VM_maps["Select Cursor Down"]          = '<M-C-Down>'
let g:VM_maps["Select Cursor Up"]            = '<M-C-Up>'

let g:VM_maps["Erase Regions"]               = '\gr'

let g:VM_maps["Mouse Cursor"]                = '<C-LeftMouse>'
let g:VM_maps["Mouse Word"]                  = '<C-RightMouse>'
let g:VM_maps["Mouse Column"]                = '<M-C-RightMouse>'
let g:VM_maps["Switch Mode"]                 = '<Tab>'

let g:VM_maps["Find Next"]                   = ']'
let g:VM_maps["Find Prev"]                   = '['
let g:VM_maps["Goto Next"]                   = '}'

let g:VM_maps["Goto Prev"]                   = '{'
let g:VM_maps["Seek Next"]                   = '<C-f>'
let g:VM_maps["Seek Prev"]                   = '<C-b>'
let g:VM_maps["Skip Region"]                 = 'q'
let g:VM_maps["Remove Region"]               = 'Q'
let g:VM_maps["Invert Direction"]            = 'o'
let g:VM_maps["Find Operator"]               = "m"
let g:VM_maps["Surround"]                    = 'S'
let g:VM_maps["Replace Pattern"]             = 'R'

let g:VM_maps["Tools Menu"]                  = '\`'
let g:VM_maps["Show Registers"]              = '\"'
let g:VM_maps["Case Setting"]                = '\c'
let g:VM_maps["Toggle Whole Word"]           = '\w'
let g:VM_maps["Transpose"]                   = '\t'
let g:VM_maps["Align"]                       = '\a'
let g:VM_maps["Duplicate"]                   = '\d'
let g:VM_maps["Rewrite Last Search"]         = '\r'
let g:VM_maps["Merge Regions"]               = '\m'
let g:VM_maps["Split Regions"]               = '\s'
let g:VM_maps["Remove Last Region"]          = '\q'
let g:VM_maps["Visual Subtract"]             = '\s'
let g:VM_maps["Case Conversion Menu"]        = '\C'
let g:VM_maps["Search Menu"]                 = '\S'

let g:VM_maps["Run Normal"]                  = '\z'
let g:VM_maps["Run Last Normal"]             = '\Z'
let g:VM_maps["Run Visual"]                  = '\v'
let g:VM_maps["Run Last Visual"]             = '\V'
let g:VM_maps["Run Ex"]                      = '\x'
let g:VM_maps["Run Last Ex"]                 = '\X'
let g:VM_maps["Run Macro"]                   = '\@'
let g:VM_maps["Align Char"]                  = '\<'
let g:VM_maps["Align Regex"]                 = '\>'
let g:VM_maps["Numbers"]                     = '\n'
let g:VM_maps["Numbers Append"]              = '\N'
let g:VM_maps["Zero Numbers"]                = '\0n'
let g:VM_maps["Zero Numbers Append"]         = '\0N'
let g:VM_maps["Shrink"]                      = "\-"
let g:VM_maps["Enlarge"]                     = "\+"

let g:VM_maps["Toggle Block"]                = '\<BS>'
let g:VM_maps["Toggle Single Region"]        = '\<CR>'
let g:VM_maps["Toggle Multiline"]            = '\M'

""" Customize pmenu colors
hi Pmenu ctermfg=white ctermbg=black guibg=DarkGrey

