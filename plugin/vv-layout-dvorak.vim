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
  if (!exists('g:termdebug_started') || g:termdebug_started == 0)
    execute("normal! lll")
  else
    exe ':Step'
  endif
endfunc

func g:Map_Ch()
  if (!exists('g:termdebug_started') || g:termdebug_started == 0)
    execute("normal! hhh")
  else
    exe ':Finish'
  endif
endfunc


nnoremap <c-h> :call g:Map_Ch()<CR>
nnoremap <c-s> :call g:Map_Cs()<CR>
vnoremap <c-h> :call g:Map_Ch()<CR>
vnoremap <c-s> :call g:Map_Cs()<CR>

noremap h h
noremap t k
noremap n j
noremap s l

noremap t k
noremap n j
noremap s l

func g:Map_Cn()
  if (!exists('g:termdebug_started') || g:termdebug_started == 0)
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
noremap ,,h :FloatermHide<CR>
noremap <leader><leader>s :FloatermShow<CR>
noremap <leader><leader>l :FloatermNext<CR>
noremap <leader><leader>L :FloatermPrev<CR>
noremap <leader><leader>i :FloatermNew

inoremap <C-BS> <C-W>
inoremap  <C-W>


""""""""""""""""""""""""""""""
" ranger
""""""""""""""""""""""""""""""
autocmd TermOpen * call TermInit()
func TermInit()
  setlocal nonu
  setlocal norelativenumber
  startinsert
endfunc

autocmd TermEnter * call TermEnter()
func TermEnter()
  call rainbow#disable()
  startinsert
endfunc

autocmd TermLeave * call TermLeave()
func TermLeave()
  call rainbow#enable()
endfunc

autocmd BufEnter * call BufEnter()
func BufEnter()
  let l:bufname=bufname("%")
  let l:bufwinnr = bufwinnr(bufname)
  if (exists("g:TagList_title") && l:bufname == g:TagList_title)
    if (exists("g:TagList_showNum") && g:TagList_showNum == 1)
      setlocal nu
    else
      setlocal nonu
    endif
    if (exists("g:TagList_showRelativeNumber") && g:TagList_showRelativeNumber == 1)
      setlocal relativenumber
    else
      setlocal norelativenumber
    endif
    call rainbow#disable()
  endif
endfunc

"autocmd BufWinEnter,WinEnter term://* call rainbow#disable()
"nmap <leader>a :Ranger<CR><C-h>:setlocal nonu<CR>:setlocal norelativenumber<CR>:call rainbow#disable()<CR>i
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
noremap <space>y :<C-u>CocList -A --normal yank<cr>

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <NUL> coc#refresh()
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

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
let g:VM_maps['Find Under']                  = '<c-l>'
let g:VM_maps['Find Subword Under']          = '<c-l>'
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
nmap <tab>a<CR> 1n
nmap <tab>o<CR> 2n
nmap <tab>e<CR> 3n
nmap <tab>u<CR> 4n
nmap <tab>i<CR> 5n
nmap <tab>d<CR> 6n
nmap <tab>h<CR> 7n
nmap <tab>t<CR> 8n
nmap <tab>n<CR> 9n

nmap <tab>as<CR> 10n
nmap <tab>aa<CR> 11n
nmap <tab>ao<CR> 12n
nmap <tab>ae<CR> 13n
nmap <tab>au<CR> 14n
nmap <tab>ai<CR> 15n
nmap <tab>ad<CR> 16n
nmap <tab>ah<CR> 17n
nmap <tab>at<CR> 18n
nmap <tab>an<CR> 19n

nmap <tab>os<CR> 20n
nmap <tab>oa<CR> 21n
nmap <tab>oo<CR> 22n
nmap <tab>oe<CR> 23n
nmap <tab>ou<CR> 24n
nmap <tab>oi<CR> 25n
nmap <tab>od<CR> 26n
nmap <tab>oh<CR> 27n
nmap <tab>ot<CR> 28n
nmap <tab>on<CR> 29n

nmap <tab>es<CR> 30n
nmap <tab>ea<CR> 31n
nmap <tab>eo<CR> 32n
nmap <tab>ee<CR> 33n
nmap <tab>eu<CR> 34n
nmap <tab>ei<CR> 35n
nmap <tab>ed<CR> 36n
nmap <tab>eh<CR> 37n
nmap <tab>et<CR> 38n
nmap <tab>en<CR> 39n

nmap <tab>us<CR> 40n
nmap <tab>ua<CR> 41n
nmap <tab>uo<CR> 42n
nmap <tab>ue<CR> 43n
nmap <tab>uu<CR> 44n
nmap <tab>ui<CR> 45n
nmap <tab>ud<CR> 46n
nmap <tab>uh<CR> 47n
nmap <tab>ut<CR> 48n
nmap <tab>un<CR> 49n

nmap <tab>is<CR> 50n
nmap <tab>ia<CR> 51n
nmap <tab>io<CR> 52n
nmap <tab>ie<CR> 53n
nmap <tab>iu<CR> 54n
nmap <tab>ii<CR> 55n
nmap <tab>id<CR> 56n
nmap <tab>ih<CR> 57n
nmap <tab>it<CR> 58n
nmap <tab>in<CR> 59n

nmap <tab>ds<CR> 60n
nmap <tab>da<CR> 61n
nmap <tab>do<CR> 62n
nmap <tab>de<CR> 63n
nmap <tab>du<CR> 64n
nmap <tab>di<CR> 65n
nmap <tab>dd<CR> 66n
nmap <tab>dh<CR> 67n
nmap <tab>dt<CR> 68n
nmap <tab>dn<CR> 69n

nmap <tab><tab>a<CR> 1t
nmap <tab><tab>o<CR> 2t
nmap <tab><tab>e<CR> 3t
nmap <tab><tab>u<CR> 4t
nmap <tab><tab>i<CR> 5t
nmap <tab><tab>d<CR> 6t
nmap <tab><tab>h<CR> 7t
nmap <tab><tab>t<CR> 8t
nmap <tab><tab>n<CR> 9t

nmap <tab><tab>as<CR> 10t
nmap <tab><tab>aa<CR> 11t
nmap <tab><tab>ao<CR> 12t
nmap <tab><tab>ae<CR> 13t
nmap <tab><tab>au<CR> 14t
nmap <tab><tab>ai<CR> 15t
nmap <tab><tab>ad<CR> 16t
nmap <tab><tab>ah<CR> 17t
nmap <tab><tab>at<CR> 18t
nmap <tab><tab>an<CR> 19t

nmap <tab><tab>os<CR> 20t
nmap <tab><tab>oa<CR> 21t
nmap <tab><tab>oo<CR> 22t
nmap <tab><tab>oe<CR> 23t
nmap <tab><tab>ou<CR> 24t
nmap <tab><tab>oi<CR> 25t
nmap <tab><tab>od<CR> 26t
nmap <tab><tab>oh<CR> 27t
nmap <tab><tab>ot<CR> 28t
nmap <tab><tab>on<CR> 29t

nmap <tab><tab>es<CR> 30t
nmap <tab><tab>ea<CR> 31t
nmap <tab><tab>eo<CR> 32t
nmap <tab><tab>ee<CR> 33t
nmap <tab><tab>eu<CR> 34t
nmap <tab><tab>ei<CR> 35t
nmap <tab><tab>ed<CR> 36t
nmap <tab><tab>eh<CR> 37t
nmap <tab><tab>et<CR> 38t
nmap <tab><tab>en<CR> 39t

nmap <tab><tab>us<CR> 40t
nmap <tab><tab>ua<CR> 41t
nmap <tab><tab>uo<CR> 42t
nmap <tab><tab>ue<CR> 43t
nmap <tab><tab>uu<CR> 44t
nmap <tab><tab>ui<CR> 45t
nmap <tab><tab>ud<CR> 46t
nmap <tab><tab>uh<CR> 47t
nmap <tab><tab>ut<CR> 48t
nmap <tab><tab>un<CR> 49t

nmap <tab><tab>is<CR> 50t
nmap <tab><tab>ia<CR> 51t
nmap <tab><tab>io<CR> 52t
nmap <tab><tab>ie<CR> 53t
nmap <tab><tab>iu<CR> 54t
nmap <tab><tab>ii<CR> 55t
nmap <tab><tab>id<CR> 56t
nmap <tab><tab>ih<CR> 57t
nmap <tab><tab>it<CR> 58t
nmap <tab><tab>in<CR> 59t

nmap <tab><tab>ds<CR> 60t
nmap <tab><tab>da<CR> 61t
nmap <tab><tab>do<CR> 62t
nmap <tab><tab>de<CR> 63t
nmap <tab><tab>du<CR> 64t
nmap <tab><tab>di<CR> 65t
nmap <tab><tab>dd<CR> 66t
nmap <tab><tab>dh<CR> 67t
nmap <tab><tab>dt<CR> 68t
nmap <tab><tab>dn<CR> 69t

nmap <leader>pe <Plug>(PickerEdit)
nmap <leader>ps <Plug>(PickerSplit)
nmap <leader>pt <Plug>(PickerTabedit)
nmap <leader>pd <Plug>(PickerTabdrop)
nmap <leader>pv <Plug>(PickerVsplit)
nmap <leader>pb <Plug>(PickerBuffer)
nmap <leader>p] <Plug>(PickerTag)
nmap <leader>pw <Plug>(PickerStag)
nmap <leader>po <Plug>(PickerBufferTag)
nmap <leader>ph <Plug>(PickerHelp)

""""""""""""""""""""""""""""""
" make 
""""""""""""""""""""""""""""""
nnoremap <F4> :Make -j `nproc`<CR>
function! GetBufferList()
  redir =>buflist
  silent! ls!
  redir END
  return buflist
endfunction

function! ToggleList(bufname, pfx)
  let buflist = GetBufferList()
  for bufnum in map(filter(split(buflist, '\n'), 'v:val =~ "'.a:bufname.'"'), 'str2nr(matchstr(v:val, "\\d\\+"))')
    if bufwinnr(bufnum) != -1
      exec(a:pfx.'close')
      return
    endif
  endfor
  if a:pfx == 'l' && len(getloclist(0)) == 0
      echohl ErrorMsg
      echo "Location List is Empty."
      return
  endif
  let winnr = winnr()
  exec(a:pfx.'open')
  if winnr() != winnr
    wincmd p
  endif
endfunction

nmap <silent> <F2> :call ToggleList("Quickfix", 'c')<CR>

function! g:Start_Termdebug(arg)
	if v:shell_error == 0
		execute "Termdebug " . a:arg
	endif
endfunction
nnoremap <F6> :!make -j `nproc`<CR>:call g:Start_Termdebug("")<CR>


"***********************************
" vim-termdebug
"***********************************

function! TermDebug_run(program)
  if (g:termdebug_started != 0)
    call execute("Run")
  else
    call g:Start_Termdebug(a:program)
  endif
endfunc

nnoremap <CR> :ToggleBreak<CR>
noremap <leader>c :Continue<CR>
