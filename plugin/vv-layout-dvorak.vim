"         _                              __ _       
"  __   _(_)_ __ ___     ___ ___  _ __  / _(_) __ _ 
"  \ \ / / | '_ ` _ \   / __/ _ \| '_ \| |_| |/ _` |
"   \ V /| | | | | | | | (_| (_) | | | |  _| | (_| |
"    \_/ |_|_| |_| |_|  \___\___/|_| |_|_| |_|\__, |
"                                             |___/ 
"键盘上有很多反人类键，例如dvorak键位下的 'f'，'x', 'l', '/', '='，这些按键要么在快速
"输入时需要大范围移动手指（f, x），要么频繁使用小指（l, /, =, 三个按键全是一个小指），
"映射时应尽量避免使这些按键

""""""""""""""""""""""""""""""
" normal
""""""""""""""""""""""""""""""
"map \ <leader>

tnoremap <C-h> <C-\><C-n>

func g:Map_Cs()
  if (g:termdebug_started == 0)
    call feedkeys("sss")
  else
    exe ':Step'
  endif
endfunc

func g:Map_Ch()
  if (g:termdebug_started == 0)
    call feedkeys("hhh")
  else
    exe ':Finish'
  endif
endfunc


noremap <c-h> :call g:Map_Ch()<CR>
noremap <c-s> :call g:Map_Cs()<CR>

noremap h h
noremap t k
noremap n j
noremap s l

noremap t k
noremap n j
noremap s l

func g:Map_Cn()
  if (g:termdebug_started == 0)
    call feedkeys("nn")
  else
    exe ':Over'
  endif
endfunc

noremap <C-n> :call g:Map_Cn()<CR>
noremap <C-t> kk

noremap T :Marks<CR>
noremap S L
noremap N J

nnoremap - -
nnoremap + +

nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
vnoremap <silent> <leader>k :call InterestingWords('v')<cr>
nnoremap <silent> <leader>K :call UncolorAllWords()<cr>
nnoremap <silent> l :call WordNavigation(1)<cr>
nnoremap <silent> L :call WordNavigation(0)<cr>

noremap j 12<c-y>
noremap k 12<c-e>

noremap b c
noremap r :bnext<CR>
nmap r <Plug>AirlineSelectNextTab
nmap c <Plug>AirlineSelectPrevTab
nmap <leader>b c:sp<CR>r:bd<cr>

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

nnoremap <space><space> <Esc>/<++><CR>:nohlsearch<CR>4xi

" toggle
noremap <space>t za  

" create
noremap <space>c zf  

" delete
noremap <space>d zd

" next
noremap <space>k zj

" prev
noremap <space>j zk

noremap <space>y :<C-u>CocList -A --normal yank<cr>

nmap <leader>uh <Plug>(easymotion-linebackward)
nmap <leader>ut <Plug>(easymotion-k)
nmap <leader>un <Plug>(easymotion-j)
nmap <leader>us <Plug>(easymotion-lineforward)
nmap <leader><leader>. <Plug>(easymotion-s)
nmap <leader>. <Plug>(easymotion-sn)
vmap <leader>uh <Plug>(easymotion-linebackward)
vmap <leader>ut <Plug>(easymotion-k)
vmap <leader>un <Plug>(easymotion-j)
vmap <leader>us <Plug>(easymotion-lineforward)
vmap <leader><leader>. <Plug>(easymotion-s)
vmap <leader>. <Plug>(easymotion-sn)
omap <leader>uh <Plug>(easymotion-linebackward)
omap <leader>ut <Plug>(easymotion-k)
omap <leader>un <Plug>(easymotion-j)
omap <leader>us <Plug>(easymotion-lineforward)
omap <leader><leader>. <Plug>(easymotion-s)
omap <leader>. <Plug>(easymotion-sn)

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
nnoremap # :b#<CR>

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
nnoremap <F2> :copen<CR>
function! g:Start_Termdebug()
	if v:shell_error == 0
		execute ":Termdebug"
	endif
endfunction
nnoremap <F6> :!make -j `nproc`<CR>:call g:Start_Termdebug()<CR>

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
nnoremap B :Buffer<CR>

nmap <leader>o :GFiles<CR>
omap <leader>o :GFiles<CR>
vmap <leader>o :GFiles<CR>

nmap <leader><leader>o :GFiles?<CR>
omap <leader><leader>o :GFiles?<CR>
vmap <leader><leader>o :GFiles?<CR>

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
nmap <leader><space> <Plug>(coc-references)

nmap gn <Plug>(coc-diagnostic-next-error)
nmap gp <Plug>(coc-diagnostic-prev-error)
nmap gi <Plug>(coc-diagnostic-info)
nmap g= <Plug>(coc-format-selected)
vmap g= <Plug>(coc-format-selected)
nmap ga= <Plug>(coc-format)
nmap gr <Plug>(coc-rename)
"nmap bna <Plug>(coc-diagnostic-next)
"nmap bpa <Plug>(coc-diagnostic-prev)

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
let g:VM_maps['Find Under']                  = '<C-l>'
let g:VM_maps['Find Subword Under']          = '<C-l>'
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

""" custom
nmap <unique> <tab>a<CR> 1n
nmap <unique> <tab>o<CR> 2n
nmap <unique> <tab>e<CR> 3n
nmap <unique> <tab>u<CR> 4n
nmap <unique> <tab>i<CR> 5n
nmap <unique> <tab>d<CR> 6n
nmap <unique> <tab>h<CR> 7n
nmap <unique> <tab>t<CR> 8n
nmap <unique> <tab>n<CR> 9n

nmap <unique> <tab>as<CR> 10n
nmap <unique> <tab>aa<CR> 11n
nmap <unique> <tab>ao<CR> 12n
nmap <unique> <tab>ae<CR> 13n
nmap <unique> <tab>au<CR> 14n
nmap <unique> <tab>ai<CR> 15n
nmap <unique> <tab>ad<CR> 16n
nmap <unique> <tab>ah<CR> 17n
nmap <unique> <tab>at<CR> 18n
nmap <unique> <tab>an<CR> 19n

nmap <unique> <tab>os<CR> 20n
nmap <unique> <tab>oa<CR> 21n
nmap <unique> <tab>oo<CR> 22n
nmap <unique> <tab>oe<CR> 23n
nmap <unique> <tab>ou<CR> 24n
nmap <unique> <tab>oi<CR> 25n
nmap <unique> <tab>od<CR> 26n
nmap <unique> <tab>oh<CR> 27n
nmap <unique> <tab>ot<CR> 28n
nmap <unique> <tab>on<CR> 29n

nmap <unique> <tab>es<CR> 30n
nmap <unique> <tab>ea<CR> 31n
nmap <unique> <tab>eo<CR> 32n
nmap <unique> <tab>ee<CR> 33n
nmap <unique> <tab>eu<CR> 34n
nmap <unique> <tab>ei<CR> 35n
nmap <unique> <tab>ed<CR> 36n
nmap <unique> <tab>eh<CR> 37n
nmap <unique> <tab>et<CR> 38n
nmap <unique> <tab>en<CR> 39n

nmap <unique> <tab>us<CR> 40n
nmap <unique> <tab>ua<CR> 41n
nmap <unique> <tab>uo<CR> 42n
nmap <unique> <tab>ue<CR> 43n
nmap <unique> <tab>uu<CR> 44n
nmap <unique> <tab>ui<CR> 45n
nmap <unique> <tab>ud<CR> 46n
nmap <unique> <tab>uh<CR> 47n
nmap <unique> <tab>ut<CR> 48n
nmap <unique> <tab>un<CR> 49n

nmap <unique> <tab>is<CR> 50n
nmap <unique> <tab>ia<CR> 51n
nmap <unique> <tab>io<CR> 52n
nmap <unique> <tab>ie<CR> 53n
nmap <unique> <tab>iu<CR> 54n
nmap <unique> <tab>ii<CR> 55n
nmap <unique> <tab>id<CR> 56n
nmap <unique> <tab>ih<CR> 57n
nmap <unique> <tab>it<CR> 58n
nmap <unique> <tab>in<CR> 59n

nmap <unique> <tab>ds<CR> 60n
nmap <unique> <tab>da<CR> 61n
nmap <unique> <tab>do<CR> 62n
nmap <unique> <tab>de<CR> 63n
nmap <unique> <tab>du<CR> 64n
nmap <unique> <tab>di<CR> 65n
nmap <unique> <tab>dd<CR> 66n
nmap <unique> <tab>dh<CR> 67n
nmap <unique> <tab>dt<CR> 68n
nmap <unique> <tab>dn<CR> 69n

nmap <unique> <tab><tab>a<CR> 1t
nmap <unique> <tab><tab>o<CR> 2t
nmap <unique> <tab><tab>e<CR> 3t
nmap <unique> <tab><tab>u<CR> 4t
nmap <unique> <tab><tab>i<CR> 5t
nmap <unique> <tab><tab>d<CR> 6t
nmap <unique> <tab><tab>h<CR> 7t
nmap <unique> <tab><tab>t<CR> 8t
nmap <unique> <tab><tab>n<CR> 9t

nmap <unique> <tab><tab>as<CR> 10t
nmap <unique> <tab><tab>aa<CR> 11t
nmap <unique> <tab><tab>ao<CR> 12t
nmap <unique> <tab><tab>ae<CR> 13t
nmap <unique> <tab><tab>au<CR> 14t
nmap <unique> <tab><tab>ai<CR> 15t
nmap <unique> <tab><tab>ad<CR> 16t
nmap <unique> <tab><tab>ah<CR> 17t
nmap <unique> <tab><tab>at<CR> 18t
nmap <unique> <tab><tab>an<CR> 19t

nmap <unique> <tab><tab>os<CR> 20t
nmap <unique> <tab><tab>oa<CR> 21t
nmap <unique> <tab><tab>oo<CR> 22t
nmap <unique> <tab><tab>oe<CR> 23t
nmap <unique> <tab><tab>ou<CR> 24t
nmap <unique> <tab><tab>oi<CR> 25t
nmap <unique> <tab><tab>od<CR> 26t
nmap <unique> <tab><tab>oh<CR> 27t
nmap <unique> <tab><tab>ot<CR> 28t
nmap <unique> <tab><tab>on<CR> 29t

nmap <unique> <tab><tab>es<CR> 30t
nmap <unique> <tab><tab>ea<CR> 31t
nmap <unique> <tab><tab>eo<CR> 32t
nmap <unique> <tab><tab>ee<CR> 33t
nmap <unique> <tab><tab>eu<CR> 34t
nmap <unique> <tab><tab>ei<CR> 35t
nmap <unique> <tab><tab>ed<CR> 36t
nmap <unique> <tab><tab>eh<CR> 37t
nmap <unique> <tab><tab>et<CR> 38t
nmap <unique> <tab><tab>en<CR> 39t

nmap <unique> <tab><tab>us<CR> 40t
nmap <unique> <tab><tab>ua<CR> 41t
nmap <unique> <tab><tab>uo<CR> 42t
nmap <unique> <tab><tab>ue<CR> 43t
nmap <unique> <tab><tab>uu<CR> 44t
nmap <unique> <tab><tab>ui<CR> 45t
nmap <unique> <tab><tab>ud<CR> 46t
nmap <unique> <tab><tab>uh<CR> 47t
nmap <unique> <tab><tab>ut<CR> 48t
nmap <unique> <tab><tab>un<CR> 49t

nmap <unique> <tab><tab>is<CR> 50t
nmap <unique> <tab><tab>ia<CR> 51t
nmap <unique> <tab><tab>io<CR> 52t
nmap <unique> <tab><tab>ie<CR> 53t
nmap <unique> <tab><tab>iu<CR> 54t
nmap <unique> <tab><tab>ii<CR> 55t
nmap <unique> <tab><tab>id<CR> 56t
nmap <unique> <tab><tab>ih<CR> 57t
nmap <unique> <tab><tab>it<CR> 58t
nmap <unique> <tab><tab>in<CR> 59t

nmap <unique> <tab><tab>ds<CR> 60t
nmap <unique> <tab><tab>da<CR> 61t
nmap <unique> <tab><tab>do<CR> 62t
nmap <unique> <tab><tab>de<CR> 63t
nmap <unique> <tab><tab>du<CR> 64t
nmap <unique> <tab><tab>di<CR> 65t
nmap <unique> <tab><tab>dd<CR> 66t
nmap <unique> <tab><tab>dh<CR> 67t
nmap <unique> <tab><tab>dt<CR> 68t
nmap <unique> <tab><tab>dn<CR> 69t

nmap <unique> <leader>pe <Plug>(PickerEdit)
nmap <unique> <leader>ps <Plug>(PickerSplit)
nmap <unique> <leader>pt <Plug>(PickerTabedit)
nmap <unique> <leader>pd <Plug>(PickerTabdrop)
nmap <unique> <leader>pv <Plug>(PickerVsplit)
nmap <unique> <leader>pb <Plug>(PickerBuffer)
nmap <unique> <leader>p] <Plug>(PickerTag)
nmap <unique> <leader>pw <Plug>(PickerStag)
nmap <unique> <leader>po <Plug>(PickerBufferTag)
nmap <unique> <leader>ph <Plug>(PickerHelp)

nnoremap <CR> :ToggleBreak<CR>
nnoremap <leader>r :Run<CR>
nnoremap <leader>c :Continue<CR>
" C-n C-s 

