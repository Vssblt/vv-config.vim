"         _                              __ _       

"  __   _(_)_ __ ___     ___ ___  _ __  / _(_) __ _ 
"  \ \ / / | '_ ` _ \   / __/ _ \| '_ \| |_| |/ _` |
"   \ V /| | | | | | | | (_| (_) | | | |  _| | (_| |
"    \_/ |_|_| |_| |_|  \___\___/|_| |_|_| |_|\__, |
"                                             |___/ 
"键盘上有很多反人类键，例如dvorak键位下的 'f'，'', 'l', '/', '='，这些按键要么在快速
"输入时需要大范围移动手指（f, ），要么频繁使用小指（l, /, =, 三个按键全是一个小指），
"映射时应尽量避免使这些按键

""""""""""""""""""""""""""""""
" normal
""""""""""""""""""""""""""""""
"map \ <leader>

tnoremap <C-h> <C-\><C-n>

nnoremap <C-n> 3j
nnoremap <C-t> 3k
nnoremap <c-h> 3h
nnoremap <c-s> 3l
xnoremap <c-h> 3h
xnoremap <c-s> 3l
xnoremap <c-n> 3j
xnoremap <c-t> 3k

nnoremap h h
nnoremap t k
nnoremap n j
nnoremap s l
xnoremap h h
xnoremap t k
xnoremap n j
xnoremap s l

nnoremap t k
nnoremap n j
nnoremap s l
xnoremap t k
xnoremap n j
xnoremap s l

nnoremap T :Marks<CR>
nnoremap S L
nnoremap N J
xnoremap T :Marks<CR>
xnoremap S L
xnoremap N J
imap <c-n> <c-j>
imap <c-t> <c-k>
smap <c-n> <c-j>
smap <c-t> <c-k>

nnoremap - -
nnoremap + +

nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
xnoremap <silent> <leader>k :call InterestingWords('v')<cr>
nnoremap <silent> <leader>K :nohl<CR>:call UncolorAllWords()<cr>
nnoremap <silent> l :call WordNavigation(1)<cr>
nnoremap <silent> L :call WordNavigation(0)<cr>

" The redraw command could make scrolling more smooth.
nnoremap j 8<c-y>
nnoremap k 8<c-e>
xnoremap j 8<c-y>
xnoremap k 8<c-e>

nnoremap b c
nnoremap r :bnext<CR>
xnoremap b c
xnoremap r :bnext<CR>
nmap r <Plug>AirlineSelectNextTab
nmap c <Plug>AirlineSelectPrevTab
nmap <leader>b c:sp<CR>r:bd<cr>

nnoremap <ScrollWheelUp> <C-Y><C-Y><C-Y><C-Y>
nnoremap <ScrollWheelDown> <C-E><C-E><C-E><C-E>
xnoremap <ScrollWheelUp> <C-Y><C-Y><C-Y><C-Y>
xnoremap <ScrollWheelDown> <C-E><C-E><C-E><C-E>
inoremap <ScrollWheelUp> <C-Y><C-Y><C-Y><C-Y>
inoremap <ScrollWheelDown> <C-E><C-E><C-E><C-E>

nnoremap <C-e> <C-i>

nnoremap <leader>- $
nnoremap <leader>d ^
xnoremap <leader>- $
xnoremap <leader>d ^
nnoremap d<leader>- d$
nnoremap d<leader>d d^

nnoremap <tab><tab> <Esc>/\(\(\[TODO\:\)\\|\(<+\)\).*\(\(\]\)\\|\(+>\)\)<CR>:nohlsearch<CR>"_cgn

" toggle
nnoremap <tab>t za  

" create
nnoremap <tab>c zf  

" delete
nnoremap <tab>d zd

" next
nnoremap <tab>k zj

" prev
nnoremap <tab>j zk

" toggle
xnoremap <tab>t za  

" create
xnoremap <tab>c zf  

" delete
xnoremap <tab>d zd

" next
xnoremap <tab>k zj

" prev
xnoremap <tab>j zk

nmap <leader>uh <Plug>(easymotion-linebackward)
nmap <leader>ut <Plug>(easymotion-k)
nmap <leader>un <Plug>(easymotion-j)
nmap <leader>us <Plug>(easymotion-lineforward)
nmap <leader><leader>. <Plug>(easymotion-s)
nmap <leader>. <Plug>(easymotion-sn)
xmap <leader>uh <Plug>(easymotion-linebackward)
xmap <leader>ut <Plug>(easymotion-k)
xmap <leader>un <Plug>(easymotion-j)
xmap <leader>us <Plug>(easymotion-lineforward)
xmap <leader><leader>. <Plug>(easymotion-s)
xmap <leader>. <Plug>(easymotion-sn)
omap <leader>uh <Plug>(easymotion-linebackward)
omap <leader>ut <Plug>(easymotion-k)
omap <leader>un <Plug>(easymotion-j)
omap <leader>us <Plug>(easymotion-lineforward)
omap <leader><leader>. <Plug>(easymotion-s)
omap <leader>. <Plug>(easymotion-sn)

nnoremap <leader>; :TlistToggle<CR>
nnoremap <leader>q :CocCommand explorer --preset right<CR>
nnoremap <leader>j :GundoToggle<CR>

nmap . <Plug>(choosewin)
nnoremap '' .
nnoremap > .
nnoremap < ,
xnoremap > .
xnoremap < ,
xnoremap '' .

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
xnoremap <leader>yy :call CopyAppend()<CR>
nnoremap <leader>yd :call CutAppend()<CR>
xnoremap <leader>yd :call CutAppend()<CR>

hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

nnoremap <Leader>C :set cursorline! cursorcolumn!<CR>

nnoremap <leader>/ VHoL<Esc>``/\%V
nnoremap <leader>* VHoL<Esc>``/\%V<C-r><C-w><CR>
nnoremap # :b#<CR>

""""""""""""""""""""""""""""""
" Floaterm
""""""""""""""""""""""""""""""
nnoremap <leader><leader>n :FloatermNew<CR>
nnoremap <leader><leader>h :FloatermHide<CR>
nnoremap ,,h :FloatermHide<CR>
nnoremap <leader><leader>s :FloatermShow<CR>
nnoremap <leader><leader>l :FloatermNext<CR>
nnoremap <leader><leader>L :FloatermPrev<CR>
nnoremap <leader><leader>i :FloatermNew

inoremap <C-BS> <C-W>
inoremap  <C-W>
onoremap <C-BS> <C-W>
onoremap  <C-W>

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
  if g:qs_enable == 1
    call quick_scope#Toggle()
  endif
  startinsert
endfunc

autocmd TermLeave * call TermLeave()
func TermLeave()
  call rainbow#enable()
  if g:qs_enable == 0
    call quick_scope#Toggle()
  endif
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
xmap <leader>a :Ranger<CR>
nmap <leader>e :Files<CR>
omap <leader>e :Files<CR>
xmap <leader>e :Files<CR>
nnoremap B :Buffer<CR>

nmap <leader>o :GFiles<CR>
omap <leader>o :GFiles<CR>
xmap <leader>o :GFiles<CR>

nmap <leader><leader>o :GFiles?<CR>
omap <leader><leader>o :GFiles?<CR>
xmap <leader><leader>o :GFiles?<CR>

""""""""""""""""""""""""""""""
" coc
""""""""""""""""""""""""""""""
nnoremap <space>y :<C-u>CocList -A --normal yank<cr>
xnoremap <space>y :<C-u>CocList -A --normal yank<cr>

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
xnoremap <leader><Tab> :call CocAction('jumpDefinition', 'drop')<CR>

nnoremap <leader><CR> :call CocAction('jumpDefinition', 'split')<CR>
xnoremap <leader><CR> :call CocAction('jumpDefinition', 'split')<CR>
nmap <leader><space> <Plug>(coc-references)

nmap gn <Plug>(coc-diagnostic-next-error)
nmap gp <Plug>(coc-diagnostic-prev-error)
nmap gi <Plug>(coc-diagnostic-info)
nmap g= <Plug>(coc-format-selected)
xmap g= <Plug>(coc-format-selected)
nmap ga= <Plug>(coc-format)
nmap gr <Plug>(coc-rename)
nmap gf <Plug>(coc-fix-current)
nmap g<space> :<C-u>CocFzfList<CR>
comm! -nargs=? -bang A CocCommand clangd.switchSourceHeader
comm! -nargs=? -bang AS CocCommand clangd.switchSourceHeader split
comm! -nargs=? -bang AV CocCommand clangd.switchSourceHeader vsplit

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
nmap <leader><c-a> <c-l><c-a>
let g:VM_default_mappings = 0
let g:VM_leader = ','
let g:VM_maps = {}
let g:VM_custom_remaps = {'s' : 'l', ',d' : 'k', ',-' : 'j', '<c-a>' : '<leader>A', 'b':'c'}

let g:VM_maps['Find Under']                  = '<c-l>'
let g:VM_maps['Find Subword Under']          = '<c-l>'
let g:VM_maps["Select All"]                  = '<leader>A' 
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
"let g:VM_maps["Transpose"]                   = '\t'
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
let g:VM_maps["Run Ex"]                      = '\'
let g:VM_maps["Run Last Ex"]                 = '\'
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

""""""""""""""""""""""""""""""
" picker
""""""""""""""""""""""""""""""

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
nnoremap <C-c> :AbortDispatch<CR>
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

autocmd FileType c,cpp noremap <buffer> <CR> :GdbStart gdb ./a.out<CR>:GdbCreateWatch info locals<CR>
autocmd FileType c,cpp nnoremap <buffer> <CR> :GdbBreakpointToggle<CR>
nnoremap <leader>c :Continue<CR>
nnoremap <leader>r :Run<CR>

if &diff != 0
nnoremap dg :diffget<CR>
xnoremap dg :diffget<CR>
endif 

"***********************************
" coc-ecdict
"***********************************
comm! -nargs=? -bang WordDict  call CocActionAsync('doHover')

"***********************************
" common
"***********************************

function NewtabTerminal()
  tabnew
  execute("terminal")
endfunction
comm! -nargs=? -bang Terminal call NewtabTerminal()
comm! -nargs=? -bang T Terminal
au TermClose * :q

"***********************************
" coc-ecdict
"***********************************
let nvimgdb_config_override = {}
let nvimgdb_disable_start_keymaps = 1



""" custom
nmap <space>a<space> 1n
nmap <space>o<space> 2n
nmap <space>e<space> 3n
nmap <space>u<space> 4n
nmap <space>i<space> 5n
nmap <space>d<space> 6n
nmap <space>h<space> 7n
nmap <space>t<space> 8n
nmap <space>n<space> 9n

nmap <space>as<space> 10n
nmap <space>aa<space> 11n
nmap <space>ao<space> 12n
nmap <space>ae<space> 13n
nmap <space>au<space> 14n
nmap <space>ai<space> 15n
nmap <space>ad<space> 16n
nmap <space>ah<space> 17n
nmap <space>at<space> 18n
nmap <space>an<space> 19n

nmap <space>os<space> 20n
nmap <space>oa<space> 21n
nmap <space>oo<space> 22n
nmap <space>oe<space> 23n
nmap <space>ou<space> 24n
nmap <space>oi<space> 25n
nmap <space>od<space> 26n
nmap <space>oh<space> 27n
nmap <space>ot<space> 28n
nmap <space>on<space> 29n

nmap <space>es<space> 30n
nmap <space>ea<space> 31n
nmap <space>eo<space> 32n
nmap <space>ee<space> 33n
nmap <space>eu<space> 34n
nmap <space>ei<space> 35n
nmap <space>ed<space> 36n
nmap <space>eh<space> 37n
nmap <space>et<space> 38n
nmap <space>en<space> 39n

nmap <space>us<space> 40n
nmap <space>ua<space> 41n
nmap <space>uo<space> 42n
nmap <space>ue<space> 43n
nmap <space>uu<space> 44n
nmap <space>ui<space> 45n
nmap <space>ud<space> 46n
nmap <space>uh<space> 47n
nmap <space>ut<space> 48n
nmap <space>un<space> 49n

nmap <space>is<space> 50n
nmap <space>ia<space> 51n
nmap <space>io<space> 52n
nmap <space>ie<space> 53n
nmap <space>iu<space> 54n
nmap <space>ii<space> 55n
nmap <space>id<space> 56n
nmap <space>ih<space> 57n
nmap <space>it<space> 58n
nmap <space>in<space> 59n

nmap <space>ds<space> 60n
nmap <space>da<space> 61n
nmap <space>do<space> 62n
nmap <space>de<space> 63n
nmap <space>du<space> 64n
nmap <space>di<space> 65n
nmap <space>dd<space> 66n
nmap <space>dh<space> 67n
nmap <space>dt<space> 68n
nmap <space>dn<space> 69n

nmap <space>hs<space> 70n
nmap <space>ha<space> 71n
nmap <space>ho<space> 72n
nmap <space>he<space> 73n
nmap <space>hu<space> 74n
nmap <space>hi<space> 75n
nmap <space>hd<space> 76n
nmap <space>hh<space> 77n
nmap <space>ht<space> 78n
nmap <space>hn<space> 79n

nmap <space>ts<space> 80n
nmap <space>ta<space> 81n
nmap <space>to<space> 82n
nmap <space>te<space> 83n
nmap <space>tu<space> 84n
nmap <space>ti<space> 85n
nmap <space>td<space> 86n
nmap <space>th<space> 87n
nmap <space>tt<space> 88n
nmap <space>tn<space> 89n

nmap <space>ns<space> 90n
nmap <space>na<space> 91n
nmap <space>no<space> 92n
nmap <space>ne<space> 93n
nmap <space>nu<space> 94n
nmap <space>ni<space> 95n
nmap <space>nd<space> 96n
nmap <space>nh<space> 97n
nmap <space>nt<space> 98n
nmap <space>nn<space> 99n

nmap <space>asa<space> 101n
nmap <space>aso<space> 102n
nmap <space>ase<space> 103n
nmap <space>asu<space> 104n
nmap <space>asi<space> 105n
nmap <space>asd<space> 106n
nmap <space>ash<space> 107n
nmap <space>ast<space> 108n
nmap <space>asn<space> 109n

nmap <space>aas<space> 110n
nmap <space>aaa<space> 111n
nmap <space>aao<space> 112n
nmap <space>aae<space> 113n
nmap <space>aau<space> 114n
nmap <space>aai<space> 115n
nmap <space>aad<space> 116n
nmap <space>aah<space> 117n
nmap <space>aat<space> 118n
nmap <space>aan<space> 119n

nmap <space>aos<space> 120n
nmap <space>aoa<space> 121n
nmap <space>aoo<space> 122n
nmap <space>aoe<space> 123n
nmap <space>aou<space> 124n
nmap <space>aoi<space> 125n
nmap <space>aod<space> 126n
nmap <space>aoh<space> 127n
nmap <space>aot<space> 128n
nmap <space>aon<space> 129n

nmap <space>aes<space> 130n
nmap <space>aea<space> 131n
nmap <space>aeo<space> 132n
nmap <space>aee<space> 133n
nmap <space>aeu<space> 134n
nmap <space>aei<space> 135n
nmap <space>aed<space> 136n
nmap <space>aeh<space> 137n
nmap <space>aet<space> 138n
nmap <space>aen<space> 139n

nmap <space>aus<space> 140n
nmap <space>aua<space> 141n
nmap <space>auo<space> 142n
nmap <space>aue<space> 143n
nmap <space>auu<space> 144n
nmap <space>aui<space> 145n
nmap <space>aud<space> 146n
nmap <space>auh<space> 147n
nmap <space>aut<space> 148n
nmap <space>aun<space> 149n

nmap <space>ais<space> 150n
nmap <space>aia<space> 151n
nmap <space>aio<space> 152n
nmap <space>aie<space> 153n
nmap <space>aiu<space> 154n
nmap <space>aii<space> 155n
nmap <space>aid<space> 156n
nmap <space>aih<space> 157n
nmap <space>ait<space> 158n
nmap <space>ain<space> 159n

nmap <space>ads<space> 160n
nmap <space>ada<space> 161n
nmap <space>ado<space> 162n
nmap <space>ade<space> 163n
nmap <space>adu<space> 164n
nmap <space>adi<space> 165n
nmap <space>add<space> 166n
nmap <space>adh<space> 167n
nmap <space>adt<space> 168n
nmap <space>adn<space> 169n

nmap <space>ahs<space> 170n
nmap <space>aha<space> 171n
nmap <space>aho<space> 172n
nmap <space>ahe<space> 173n
nmap <space>ahu<space> 174n
nmap <space>ahi<space> 175n
nmap <space>ahd<space> 176n
nmap <space>ahh<space> 177n
nmap <space>aht<space> 178n
nmap <space>ahn<space> 179n

nmap <space>ats<space> 180n
nmap <space>ata<space> 181n
nmap <space>ato<space> 182n
nmap <space>ate<space> 183n
nmap <space>atu<space> 184n
nmap <space>ati<space> 185n
nmap <space>atd<space> 186n
nmap <space>ath<space> 187n
nmap <space>att<space> 188n
nmap <space>atn<space> 189n

nmap <space>ans<space> 190n
nmap <space>ana<space> 191n
nmap <space>ano<space> 192n
nmap <space>ane<space> 193n
nmap <space>anu<space> 194n
nmap <space>ani<space> 195n
nmap <space>and<space> 196n
nmap <space>anh<space> 197n
nmap <space>ant<space> 198n
nmap <space>ann<space> 199n

nmap <space>osa<space> 201n
nmap <space>oso<space> 202n
nmap <space>ose<space> 203n
nmap <space>osu<space> 204n
nmap <space>osi<space> 205n
nmap <space>osd<space> 206n
nmap <space>osh<space> 207n
nmap <space>ost<space> 208n
nmap <space>osn<space> 209n

nmap <space>oas<space> 210n
nmap <space>oaa<space> 211n
nmap <space>oao<space> 212n
nmap <space>oae<space> 213n
nmap <space>oau<space> 214n
nmap <space>oai<space> 215n
nmap <space>oad<space> 216n
nmap <space>oah<space> 217n
nmap <space>oat<space> 218n
nmap <space>oan<space> 219n

nmap <space>oos<space> 220n
nmap <space>ooa<space> 221n
nmap <space>ooo<space> 222n
nmap <space>ooe<space> 223n
nmap <space>oou<space> 224n
nmap <space>ooi<space> 225n
nmap <space>ood<space> 226n
nmap <space>ooh<space> 227n
nmap <space>oot<space> 228n
nmap <space>oon<space> 229n

nmap <space>oes<space> 230n
nmap <space>oea<space> 231n
nmap <space>oeo<space> 232n
nmap <space>oee<space> 233n
nmap <space>oeu<space> 234n
nmap <space>oei<space> 235n
nmap <space>oed<space> 236n
nmap <space>oeh<space> 237n
nmap <space>oet<space> 238n
nmap <space>oen<space> 139n

nmap <space>ous<space> 240n
nmap <space>oua<space> 241n
nmap <space>ouo<space> 242n
nmap <space>oue<space> 243n
nmap <space>ouu<space> 244n
nmap <space>oui<space> 245n
nmap <space>oud<space> 246n
nmap <space>ouh<space> 247n
nmap <space>out<space> 248n
nmap <space>oun<space> 249n

nmap <space>ois<space> 250n
nmap <space>oia<space> 251n
nmap <space>oio<space> 252n
nmap <space>oie<space> 253n
nmap <space>oiu<space> 254n
nmap <space>oii<space> 255n
nmap <space>oid<space> 256n
nmap <space>oih<space> 257n
nmap <space>oit<space> 258n
nmap <space>oin<space> 259n

nmap <space>ods<space> 260n
nmap <space>oda<space> 261n
nmap <space>odo<space> 262n
nmap <space>ode<space> 263n
nmap <space>odu<space> 264n
nmap <space>odi<space> 265n
nmap <space>odd<space> 266n
nmap <space>odh<space> 267n
nmap <space>odt<space> 268n
nmap <space>odn<space> 269n

nmap <space>ohs<space> 270n
nmap <space>oha<space> 271n
nmap <space>oho<space> 272n
nmap <space>ohe<space> 273n
nmap <space>ohu<space> 274n
nmap <space>ohi<space> 275n
nmap <space>ohd<space> 276n
nmap <space>ohh<space> 277n
nmap <space>oht<space> 278n
nmap <space>ohn<space> 279n

nmap <space>ots<space> 280n
nmap <space>ota<space> 281n
nmap <space>oto<space> 282n
nmap <space>ote<space> 283n
nmap <space>otu<space> 284n
nmap <space>oti<space> 285n
nmap <space>otd<space> 286n
nmap <space>oth<space> 287n
nmap <space>ott<space> 288n
nmap <space>otn<space> 289n

nmap <space>ons<space> 290n
nmap <space>ona<space> 291n
nmap <space>ono<space> 292n
nmap <space>one<space> 293n
nmap <space>onu<space> 294n
nmap <space>oni<space> 295n
nmap <space>ond<space> 296n
nmap <space>onh<space> 297n
nmap <space>ont<space> 298n
nmap <space>onn<space> 299n







nmap <space><space>a<space> 1t
nmap <space><space>o<space> 2t
nmap <space><space>e<space> 3t
nmap <space><space>u<space> 4t
nmap <space><space>i<space> 5t
nmap <space><space>d<space> 6t
nmap <space><space>h<space> 7t
nmap <space><space>t<space> 8t
nmap <space><space>n<space> 9t

nmap <space><space>as<space> 10t
nmap <space><space>aa<space> 11t
nmap <space><space>ao<space> 12t
nmap <space><space>ae<space> 13t
nmap <space><space>au<space> 14t
nmap <space><space>ai<space> 15t
nmap <space><space>ad<space> 16t
nmap <space><space>ah<space> 17t
nmap <space><space>at<space> 18t
nmap <space><space>an<space> 19t

nmap <space><space>os<space> 20t
nmap <space><space>oa<space> 21t
nmap <space><space>oo<space> 22t
nmap <space><space>oe<space> 23t
nmap <space><space>ou<space> 24t
nmap <space><space>oi<space> 25t
nmap <space><space>od<space> 26t
nmap <space><space>oh<space> 27t
nmap <space><space>ot<space> 28t
nmap <space><space>on<space> 29t

nmap <space><space>es<space> 30t
nmap <space><space>ea<space> 31t
nmap <space><space>eo<space> 32t
nmap <space><space>ee<space> 33t
nmap <space><space>eu<space> 34t
nmap <space><space>ei<space> 35t
nmap <space><space>ed<space> 36t
nmap <space><space>eh<space> 37t
nmap <space><space>et<space> 38t
nmap <space><space>en<space> 39t

nmap <space><space>us<space> 40t
nmap <space><space>ua<space> 41t
nmap <space><space>uo<space> 42t
nmap <space><space>ue<space> 43t
nmap <space><space>uu<space> 44t
nmap <space><space>ui<space> 45t
nmap <space><space>ud<space> 46t
nmap <space><space>uh<space> 47t
nmap <space><space>ut<space> 48t
nmap <space><space>un<space> 49t

nmap <space><space>is<space> 50t
nmap <space><space>ia<space> 51t
nmap <space><space>io<space> 52t
nmap <space><space>ie<space> 53t
nmap <space><space>iu<space> 54t
nmap <space><space>ii<space> 55t
nmap <space><space>id<space> 56t
nmap <space><space>ih<space> 57t
nmap <space><space>it<space> 58t
nmap <space><space>in<space> 59t

nmap <space><space>ds<space> 60t
nmap <space><space>da<space> 61t
nmap <space><space>do<space> 62t
nmap <space><space>de<space> 63t
nmap <space><space>du<space> 64t
nmap <space><space>di<space> 65t
nmap <space><space>dd<space> 66t
nmap <space><space>dh<space> 67t
nmap <space><space>dt<space> 68t
nmap <space><space>dn<space> 69t

nmap <space><space>hs<space> 70t
nmap <space><space>ha<space> 71t
nmap <space><space>ho<space> 72t
nmap <space><space>he<space> 73t
nmap <space><space>hu<space> 74t
nmap <space><space>hi<space> 75t
nmap <space><space>hd<space> 76t
nmap <space><space>hh<space> 77t
nmap <space><space>ht<space> 78t
nmap <space><space>hn<space> 79t

nmap <space><space>ts<space> 80t
nmap <space><space>ta<space> 81t
nmap <space><space>to<space> 82t
nmap <space><space>te<space> 83t
nmap <space><space>tu<space> 84t
nmap <space><space>ti<space> 85t
nmap <space><space>td<space> 86t
nmap <space><space>th<space> 87t
nmap <space><space>tt<space> 88t
nmap <space><space>tn<space> 89t

nmap <space><space>ns<space> 90t
nmap <space><space>na<space> 91t
nmap <space><space>no<space> 92t
nmap <space><space>ne<space> 93t
nmap <space><space>nu<space> 94t
nmap <space><space>ni<space> 95t
nmap <space><space>nd<space> 96t
nmap <space><space>nh<space> 97t
nmap <space><space>nt<space> 98t
nmap <space><space>nn<space> 99t

nmap <space><space>asa<space> 101t
nmap <space><space>aso<space> 102t
nmap <space><space>ase<space> 103t
nmap <space><space>asu<space> 104t
nmap <space><space>asi<space> 105t
nmap <space><space>asd<space> 106t
nmap <space><space>ash<space> 107t
nmap <space><space>ast<space> 108t
nmap <space><space>asn<space> 109t

nmap <space><space>aas<space> 110t
nmap <space><space>aaa<space> 111t
nmap <space><space>aao<space> 112t
nmap <space><space>aae<space> 113t
nmap <space><space>aau<space> 114t
nmap <space><space>aai<space> 115t
nmap <space><space>aad<space> 116t
nmap <space><space>aah<space> 117t
nmap <space><space>aat<space> 118t
nmap <space><space>aan<space> 119t

nmap <space><space>aos<space> 120t
nmap <space><space>aoa<space> 121t
nmap <space><space>aoo<space> 122t
nmap <space><space>aoe<space> 123t
nmap <space><space>aou<space> 124t
nmap <space><space>aoi<space> 125t
nmap <space><space>aod<space> 126t
nmap <space><space>aoh<space> 127t
nmap <space><space>aot<space> 128t
nmap <space><space>aon<space> 129t

nmap <space><space>aes<space> 130t
nmap <space><space>aea<space> 131t
nmap <space><space>aeo<space> 132t
nmap <space><space>aee<space> 133t
nmap <space><space>aeu<space> 134t
nmap <space><space>aei<space> 135t
nmap <space><space>aed<space> 136t
nmap <space><space>aeh<space> 137t
nmap <space><space>aet<space> 138t
nmap <space><space>aen<space> 139t

nmap <space><space>aus<space> 140t
nmap <space><space>aua<space> 141t
nmap <space><space>auo<space> 142t
nmap <space><space>aue<space> 143t
nmap <space><space>auu<space> 144t
nmap <space><space>aui<space> 145t
nmap <space><space>aud<space> 146t
nmap <space><space>auh<space> 147t
nmap <space><space>aut<space> 148t
nmap <space><space>aun<space> 149t

nmap <space><space>ais<space> 150t
nmap <space><space>aia<space> 151t
nmap <space><space>aio<space> 152t
nmap <space><space>aie<space> 153t
nmap <space><space>aiu<space> 154t
nmap <space><space>aii<space> 155t
nmap <space><space>aid<space> 156t
nmap <space><space>aih<space> 157t
nmap <space><space>ait<space> 158t
nmap <space><space>ain<space> 159t

nmap <space><space>ads<space> 160t
nmap <space><space>ada<space> 161t
nmap <space><space>ado<space> 162t
nmap <space><space>ade<space> 163t
nmap <space><space>adu<space> 164t
nmap <space><space>adi<space> 165t
nmap <space><space>add<space> 166t
nmap <space><space>adh<space> 167t
nmap <space><space>adt<space> 168t
nmap <space><space>adn<space> 169t

nmap <space><space>ahs<space> 170t
nmap <space><space>aha<space> 171t
nmap <space><space>aho<space> 172t
nmap <space><space>ahe<space> 173t
nmap <space><space>ahu<space> 174t
nmap <space><space>ahi<space> 175t
nmap <space><space>ahd<space> 176t
nmap <space><space>ahh<space> 177t
nmap <space><space>aht<space> 178t
nmap <space><space>ahn<space> 179t

nmap <space><space>ats<space> 180t
nmap <space><space>ata<space> 181t
nmap <space><space>ato<space> 182t
nmap <space><space>ate<space> 183t
nmap <space><space>atu<space> 184t
nmap <space><space>ati<space> 185t
nmap <space><space>atd<space> 186t
nmap <space><space>ath<space> 187t
nmap <space><space>att<space> 188t
nmap <space><space>atn<space> 189t

nmap <space><space>ans<space> 190t
nmap <space><space>ana<space> 191t
nmap <space><space>ano<space> 192t
nmap <space><space>ane<space> 193t
nmap <space><space>anu<space> 194t
nmap <space><space>ani<space> 195t
nmap <space><space>and<space> 196t
nmap <space><space>anh<space> 197t
nmap <space><space>ant<space> 198t
nmap <space><space>ann<space> 199t

nmap <space><space>osa<space> 201t
nmap <space><space>oso<space> 202t
nmap <space><space>ose<space> 203t
nmap <space><space>osu<space> 204t
nmap <space><space>osi<space> 205t
nmap <space><space>osd<space> 206t
nmap <space><space>osh<space> 207t
nmap <space><space>ost<space> 208t
nmap <space><space>osn<space> 209t

nmap <space><space>oas<space> 210t
nmap <space><space>oaa<space> 211t
nmap <space><space>oao<space> 212t
nmap <space><space>oae<space> 213t
nmap <space><space>oau<space> 214t
nmap <space><space>oai<space> 215t
nmap <space><space>oad<space> 216t
nmap <space><space>oah<space> 217t
nmap <space><space>oat<space> 218t
nmap <space><space>oan<space> 219t

nmap <space><space>oos<space> 220t
nmap <space><space>ooa<space> 221t
nmap <space><space>ooo<space> 222t
nmap <space><space>ooe<space> 223t
nmap <space><space>oou<space> 224t
nmap <space><space>ooi<space> 225t
nmap <space><space>ood<space> 226t
nmap <space><space>ooh<space> 227t
nmap <space><space>oot<space> 228t
nmap <space><space>oon<space> 229t

nmap <space><space>oes<space> 230t
nmap <space><space>oea<space> 231t
nmap <space><space>oeo<space> 232t
nmap <space><space>oee<space> 233t
nmap <space><space>oeu<space> 234t
nmap <space><space>oei<space> 235t
nmap <space><space>oed<space> 236t
nmap <space><space>oeh<space> 237t
nmap <space><space>oet<space> 238t
nmap <space><space>oen<space> 139t

nmap <space><space>ous<space> 240t
nmap <space><space>oua<space> 241t
nmap <space><space>ouo<space> 242t
nmap <space><space>oue<space> 243t
nmap <space><space>ouu<space> 244t
nmap <space><space>oui<space> 245t
nmap <space><space>oud<space> 246t
nmap <space><space>ouh<space> 247t
nmap <space><space>out<space> 248t
nmap <space><space>oun<space> 249t

nmap <space><space>ois<space> 250t
nmap <space><space>oia<space> 251t
nmap <space><space>oio<space> 252t
nmap <space><space>oie<space> 253t
nmap <space><space>oiu<space> 254t
nmap <space><space>oii<space> 255t
nmap <space><space>oid<space> 256t
nmap <space><space>oih<space> 257t
nmap <space><space>oit<space> 258t
nmap <space><space>oin<space> 259t

nmap <space><space>ods<space> 260t
nmap <space><space>oda<space> 261t
nmap <space><space>odo<space> 262t
nmap <space><space>ode<space> 263t
nmap <space><space>odu<space> 264t
nmap <space><space>odi<space> 265t
nmap <space><space>odd<space> 266t
nmap <space><space>odh<space> 267t
nmap <space><space>odt<space> 268t
nmap <space><space>odn<space> 269t

nmap <space><space>ohs<space> 270t
nmap <space><space>oha<space> 271t
nmap <space><space>oho<space> 272t
nmap <space><space>ohe<space> 273t
nmap <space><space>ohu<space> 274t
nmap <space><space>ohi<space> 275t
nmap <space><space>ohd<space> 276t
nmap <space><space>ohh<space> 277t
nmap <space><space>oht<space> 278t
nmap <space><space>ohn<space> 279t

nmap <space><space>ots<space> 280t
nmap <space><space>ota<space> 281t
nmap <space><space>oto<space> 282t
nmap <space><space>ote<space> 283t
nmap <space><space>otu<space> 284t
nmap <space><space>oti<space> 285t
nmap <space><space>otd<space> 286t
nmap <space><space>oth<space> 287t
nmap <space><space>ott<space> 288t
nmap <space><space>otn<space> 289t

nmap <space><space>ons<space> 290t
nmap <space><space>ona<space> 291t
nmap <space><space>ono<space> 292t
nmap <space><space>one<space> 293t
nmap <space><space>onu<space> 294t
nmap <space><space>oni<space> 295t
nmap <space><space>ond<space> 296t
nmap <space><space>onh<space> 297t
nmap <space><space>ont<space> 298t
nmap <space><space>onn<space> 299t

xmap <space>a<space> 1n
xmap <space>o<space> 2n
xmap <space>e<space> 3n
xmap <space>u<space> 4n
xmap <space>i<space> 5n
xmap <space>d<space> 6n
xmap <space>h<space> 7n
xmap <space>t<space> 8n
xmap <space>n<space> 9n

xmap <space>as<space> 10n
xmap <space>aa<space> 11n
xmap <space>ao<space> 12n
xmap <space>ae<space> 13n
xmap <space>au<space> 14n
xmap <space>ai<space> 15n
xmap <space>ad<space> 16n
xmap <space>ah<space> 17n
xmap <space>at<space> 18n
xmap <space>an<space> 19n

xmap <space>os<space> 20n
xmap <space>oa<space> 21n
xmap <space>oo<space> 22n
xmap <space>oe<space> 23n
xmap <space>ou<space> 24n
xmap <space>oi<space> 25n
xmap <space>od<space> 26n
xmap <space>oh<space> 27n
xmap <space>ot<space> 28n
xmap <space>on<space> 29n

xmap <space>es<space> 30n
xmap <space>ea<space> 31n
xmap <space>eo<space> 32n
xmap <space>ee<space> 33n
xmap <space>eu<space> 34n
xmap <space>ei<space> 35n
xmap <space>ed<space> 36n
xmap <space>eh<space> 37n
xmap <space>et<space> 38n
xmap <space>en<space> 39n

xmap <space>us<space> 40n
xmap <space>ua<space> 41n
xmap <space>uo<space> 42n
xmap <space>ue<space> 43n
xmap <space>uu<space> 44n
xmap <space>ui<space> 45n
xmap <space>ud<space> 46n
xmap <space>uh<space> 47n
xmap <space>ut<space> 48n
xmap <space>un<space> 49n

xmap <space>is<space> 50n
xmap <space>ia<space> 51n
xmap <space>io<space> 52n
xmap <space>ie<space> 53n
xmap <space>iu<space> 54n
xmap <space>ii<space> 55n
xmap <space>id<space> 56n
xmap <space>ih<space> 57n
xmap <space>it<space> 58n
xmap <space>in<space> 59n

xmap <space>ds<space> 60n
xmap <space>da<space> 61n
xmap <space>do<space> 62n
xmap <space>de<space> 63n
xmap <space>du<space> 64n
xmap <space>di<space> 65n
xmap <space>dd<space> 66n
xmap <space>dh<space> 67n
xmap <space>dt<space> 68n
xmap <space>dn<space> 69n

xmap <space>hs<space> 70n
xmap <space>ha<space> 71n
xmap <space>ho<space> 72n
xmap <space>he<space> 73n
xmap <space>hu<space> 74n
xmap <space>hi<space> 75n
xmap <space>hd<space> 76n
xmap <space>hh<space> 77n
xmap <space>ht<space> 78n
xmap <space>hn<space> 79n

xmap <space>ts<space> 80n
xmap <space>ta<space> 81n
xmap <space>to<space> 82n
xmap <space>te<space> 83n
xmap <space>tu<space> 84n
xmap <space>ti<space> 85n
xmap <space>td<space> 86n
xmap <space>th<space> 87n
xmap <space>tt<space> 88n
xmap <space>tn<space> 89n

xmap <space>ns<space> 90n
xmap <space>na<space> 91n
xmap <space>no<space> 92n
xmap <space>ne<space> 93n
xmap <space>nu<space> 94n
xmap <space>ni<space> 95n
xmap <space>nd<space> 96n
xmap <space>nh<space> 97n
xmap <space>nt<space> 98n
xmap <space>nn<space> 99n

xmap <space>asa<space> 101n
xmap <space>aso<space> 102n
xmap <space>ase<space> 103n
xmap <space>asu<space> 104n
xmap <space>asi<space> 105n
xmap <space>asd<space> 106n
xmap <space>ash<space> 107n
xmap <space>ast<space> 108n
xmap <space>asn<space> 109n

xmap <space>aas<space> 110n
xmap <space>aaa<space> 111n
xmap <space>aao<space> 112n
xmap <space>aae<space> 113n
xmap <space>aau<space> 114n
xmap <space>aai<space> 115n
xmap <space>aad<space> 116n
xmap <space>aah<space> 117n
xmap <space>aat<space> 118n
xmap <space>aan<space> 119n

xmap <space>aos<space> 120n
xmap <space>aoa<space> 121n
xmap <space>aoo<space> 122n
xmap <space>aoe<space> 123n
xmap <space>aou<space> 124n
xmap <space>aoi<space> 125n
xmap <space>aod<space> 126n
xmap <space>aoh<space> 127n
xmap <space>aot<space> 128n
xmap <space>aon<space> 129n

xmap <space>aes<space> 130n
xmap <space>aea<space> 131n
xmap <space>aeo<space> 132n
xmap <space>aee<space> 133n
xmap <space>aeu<space> 134n
xmap <space>aei<space> 135n
xmap <space>aed<space> 136n
xmap <space>aeh<space> 137n
xmap <space>aet<space> 138n
xmap <space>aen<space> 139n

xmap <space>aus<space> 140n
xmap <space>aua<space> 141n
xmap <space>auo<space> 142n
xmap <space>aue<space> 143n
xmap <space>auu<space> 144n
xmap <space>aui<space> 145n
xmap <space>aud<space> 146n
xmap <space>auh<space> 147n
xmap <space>aut<space> 148n
xmap <space>aun<space> 149n

xmap <space>ais<space> 150n
xmap <space>aia<space> 151n
xmap <space>aio<space> 152n
xmap <space>aie<space> 153n
xmap <space>aiu<space> 154n
xmap <space>aii<space> 155n
xmap <space>aid<space> 156n
xmap <space>aih<space> 157n
xmap <space>ait<space> 158n
xmap <space>ain<space> 159n

xmap <space>ads<space> 160n
xmap <space>ada<space> 161n
xmap <space>ado<space> 162n
xmap <space>ade<space> 163n
xmap <space>adu<space> 164n
xmap <space>adi<space> 165n
xmap <space>add<space> 166n
xmap <space>adh<space> 167n
xmap <space>adt<space> 168n
xmap <space>adn<space> 169n

xmap <space>ahs<space> 170n
xmap <space>aha<space> 171n
xmap <space>aho<space> 172n
xmap <space>ahe<space> 173n
xmap <space>ahu<space> 174n
xmap <space>ahi<space> 175n
xmap <space>ahd<space> 176n
xmap <space>ahh<space> 177n
xmap <space>aht<space> 178n
xmap <space>ahn<space> 179n

xmap <space>ats<space> 180n
xmap <space>ata<space> 181n
xmap <space>ato<space> 182n
xmap <space>ate<space> 183n
xmap <space>atu<space> 184n
xmap <space>ati<space> 185n
xmap <space>atd<space> 186n
xmap <space>ath<space> 187n
xmap <space>att<space> 188n
xmap <space>atn<space> 189n

xmap <space>ans<space> 190n
xmap <space>ana<space> 191n
xmap <space>ano<space> 192n
xmap <space>ane<space> 193n
xmap <space>anu<space> 194n
xmap <space>ani<space> 195n
xmap <space>and<space> 196n
xmap <space>anh<space> 197n
xmap <space>ant<space> 198n
xmap <space>ann<space> 199n

xmap <space>asa<space> 201n
xmap <space>aso<space> 202n
xmap <space>ase<space> 203n
xmap <space>asu<space> 204n
xmap <space>asi<space> 205n
xmap <space>asd<space> 206n
xmap <space>ash<space> 207n
xmap <space>ast<space> 208n
xmap <space>asn<space> 209n

xmap <space>oas<space> 210n
xmap <space>oaa<space> 211n
xmap <space>oao<space> 212n
xmap <space>oae<space> 213n
xmap <space>oau<space> 214n
xmap <space>oai<space> 215n
xmap <space>oad<space> 216n
xmap <space>oah<space> 217n
xmap <space>oat<space> 218n
xmap <space>oan<space> 219n

xmap <space>oos<space> 220n
xmap <space>ooa<space> 221n
xmap <space>ooo<space> 222n
xmap <space>ooe<space> 223n
xmap <space>oou<space> 224n
xmap <space>ooi<space> 225n
xmap <space>ood<space> 226n
xmap <space>ooh<space> 227n
xmap <space>oot<space> 228n
xmap <space>oon<space> 229n

xmap <space>oes<space> 230n
xmap <space>oea<space> 231n
xmap <space>oeo<space> 232n
xmap <space>oee<space> 233n
xmap <space>oeu<space> 234n
xmap <space>oei<space> 235n
xmap <space>oed<space> 236n
xmap <space>oeh<space> 237n
xmap <space>oet<space> 238n
xmap <space>oen<space> 139n

xmap <space>ous<space> 240n
xmap <space>oua<space> 241n
xmap <space>ouo<space> 242n
xmap <space>oue<space> 243n
xmap <space>ouu<space> 244n
xmap <space>oui<space> 245n
xmap <space>oud<space> 246n
xmap <space>ouh<space> 247n
xmap <space>out<space> 248n
xmap <space>oun<space> 249n

xmap <space>ois<space> 250n
xmap <space>oia<space> 251n
xmap <space>oio<space> 252n
xmap <space>oie<space> 253n
xmap <space>oiu<space> 254n
xmap <space>oii<space> 255n
xmap <space>oid<space> 256n
xmap <space>oih<space> 257n
xmap <space>oit<space> 258n
xmap <space>oin<space> 259n

xmap <space>ods<space> 260n
xmap <space>oda<space> 261n
xmap <space>odo<space> 262n
xmap <space>ode<space> 263n
xmap <space>odu<space> 264n
xmap <space>odi<space> 265n
xmap <space>odd<space> 266n
xmap <space>odh<space> 267n
xmap <space>odt<space> 268n
xmap <space>odn<space> 269n

xmap <space>ohs<space> 270n
xmap <space>oha<space> 271n
xmap <space>oho<space> 272n
xmap <space>ohe<space> 273n
xmap <space>ohu<space> 274n
xmap <space>ohi<space> 275n
xmap <space>ohd<space> 276n
xmap <space>ohh<space> 277n
xmap <space>oht<space> 278n
xmap <space>ohn<space> 279n

xmap <space>ots<space> 280n
xmap <space>ota<space> 281n
xmap <space>oto<space> 282n
xmap <space>ote<space> 283n
xmap <space>otu<space> 284n
xmap <space>oti<space> 285n
xmap <space>otd<space> 286n
xmap <space>oth<space> 287n
xmap <space>ott<space> 288n
xmap <space>otn<space> 289n

xmap <space>ons<space> 290n
xmap <space>ona<space> 291n
xmap <space>ono<space> 292n
xmap <space>one<space> 293n
xmap <space>onu<space> 294n
xmap <space>oni<space> 295n
xmap <space>ond<space> 296n
xmap <space>onh<space> 297n
xmap <space>ont<space> 298n
xmap <space>onn<space> 299n







xmap <space><space>a<space> 1t
xmap <space><space>o<space> 2t
xmap <space><space>e<space> 3t
xmap <space><space>u<space> 4t
xmap <space><space>i<space> 5t
xmap <space><space>d<space> 6t
xmap <space><space>h<space> 7t
xmap <space><space>t<space> 8t
xmap <space><space>n<space> 9t

xmap <space><space>as<space> 10t
xmap <space><space>aa<space> 11t
xmap <space><space>ao<space> 12t
xmap <space><space>ae<space> 13t
xmap <space><space>au<space> 14t
xmap <space><space>ai<space> 15t
xmap <space><space>ad<space> 16t
xmap <space><space>ah<space> 17t
xmap <space><space>at<space> 18t
xmap <space><space>an<space> 19t

xmap <space><space>os<space> 20t
xmap <space><space>oa<space> 21t
xmap <space><space>oo<space> 22t
xmap <space><space>oe<space> 23t
xmap <space><space>ou<space> 24t
xmap <space><space>oi<space> 25t
xmap <space><space>od<space> 26t
xmap <space><space>oh<space> 27t
xmap <space><space>ot<space> 28t
xmap <space><space>on<space> 29t

xmap <space><space>es<space> 30t
xmap <space><space>ea<space> 31t
xmap <space><space>eo<space> 32t
xmap <space><space>ee<space> 33t
xmap <space><space>eu<space> 34t
xmap <space><space>ei<space> 35t
xmap <space><space>ed<space> 36t
xmap <space><space>eh<space> 37t
xmap <space><space>et<space> 38t
xmap <space><space>en<space> 39t

xmap <space><space>us<space> 40t
xmap <space><space>ua<space> 41t
xmap <space><space>uo<space> 42t
xmap <space><space>ue<space> 43t
xmap <space><space>uu<space> 44t
xmap <space><space>ui<space> 45t
xmap <space><space>ud<space> 46t
xmap <space><space>uh<space> 47t
xmap <space><space>ut<space> 48t
xmap <space><space>un<space> 49t

xmap <space><space>is<space> 50t
xmap <space><space>ia<space> 51t
xmap <space><space>io<space> 52t
xmap <space><space>ie<space> 53t
xmap <space><space>iu<space> 54t
xmap <space><space>ii<space> 55t
xmap <space><space>id<space> 56t
xmap <space><space>ih<space> 57t
xmap <space><space>it<space> 58t
xmap <space><space>in<space> 59t

xmap <space><space>ds<space> 60t
xmap <space><space>da<space> 61t
xmap <space><space>do<space> 62t
xmap <space><space>de<space> 63t
xmap <space><space>du<space> 64t
xmap <space><space>di<space> 65t
xmap <space><space>dd<space> 66t
xmap <space><space>dh<space> 67t
xmap <space><space>dt<space> 68t
xmap <space><space>dn<space> 69t

xmap <space><space>hs<space> 70t
xmap <space><space>ha<space> 71t
xmap <space><space>ho<space> 72t
xmap <space><space>he<space> 73t
xmap <space><space>hu<space> 74t
xmap <space><space>hi<space> 75t
xmap <space><space>hd<space> 76t
xmap <space><space>hh<space> 77t
xmap <space><space>ht<space> 78t
xmap <space><space>hn<space> 79t

xmap <space><space>ts<space> 80t
xmap <space><space>ta<space> 81t
xmap <space><space>to<space> 82t
xmap <space><space>te<space> 83t
xmap <space><space>tu<space> 84t
xmap <space><space>ti<space> 85t
xmap <space><space>td<space> 86t
xmap <space><space>th<space> 87t
xmap <space><space>tt<space> 88t
xmap <space><space>tn<space> 89t

xmap <space><space>ns<space> 90t
xmap <space><space>na<space> 91t
xmap <space><space>no<space> 92t
xmap <space><space>ne<space> 93t
xmap <space><space>nu<space> 94t
xmap <space><space>ni<space> 95t
xmap <space><space>nd<space> 96t
xmap <space><space>nh<space> 97t
xmap <space><space>nt<space> 98t
xmap <space><space>nn<space> 99t

xmap <space><space>asa<space> 101t
xmap <space><space>aso<space> 102t
xmap <space><space>ase<space> 103t
xmap <space><space>asu<space> 104t
xmap <space><space>asi<space> 105t
xmap <space><space>asd<space> 106t
xmap <space><space>ash<space> 107t
xmap <space><space>ast<space> 108t
xmap <space><space>asn<space> 109t

xmap <space><space>aas<space> 110t
xmap <space><space>aaa<space> 111t
xmap <space><space>aao<space> 112t
xmap <space><space>aae<space> 113t
xmap <space><space>aau<space> 114t
xmap <space><space>aai<space> 115t
xmap <space><space>aad<space> 116t
xmap <space><space>aah<space> 117t
xmap <space><space>aat<space> 118t
xmap <space><space>aan<space> 119t

xmap <space><space>aos<space> 120t
xmap <space><space>aoa<space> 121t
xmap <space><space>aoo<space> 122t
xmap <space><space>aoe<space> 123t
xmap <space><space>aou<space> 124t
xmap <space><space>aoi<space> 125t
xmap <space><space>aod<space> 126t
xmap <space><space>aoh<space> 127t
xmap <space><space>aot<space> 128t
xmap <space><space>aon<space> 129t

xmap <space><space>aes<space> 130t
xmap <space><space>aea<space> 131t
xmap <space><space>aeo<space> 132t
xmap <space><space>aee<space> 133t
xmap <space><space>aeu<space> 134t
xmap <space><space>aei<space> 135t
xmap <space><space>aed<space> 136t
xmap <space><space>aeh<space> 137t
xmap <space><space>aet<space> 138t
xmap <space><space>aen<space> 139t

xmap <space><space>aus<space> 140t
xmap <space><space>aua<space> 141t
xmap <space><space>auo<space> 142t
xmap <space><space>aue<space> 143t
xmap <space><space>auu<space> 144t
xmap <space><space>aui<space> 145t
xmap <space><space>aud<space> 146t
xmap <space><space>auh<space> 147t
xmap <space><space>aut<space> 148t
xmap <space><space>aun<space> 149t

xmap <space><space>ais<space> 150t
xmap <space><space>aia<space> 151t
xmap <space><space>aio<space> 152t
xmap <space><space>aie<space> 153t
xmap <space><space>aiu<space> 154t
xmap <space><space>aii<space> 155t
xmap <space><space>aid<space> 156t
xmap <space><space>aih<space> 157t
xmap <space><space>ait<space> 158t
xmap <space><space>ain<space> 159t

xmap <space><space>ads<space> 160t
xmap <space><space>ada<space> 161t
xmap <space><space>ado<space> 162t
xmap <space><space>ade<space> 163t
xmap <space><space>adu<space> 164t
xmap <space><space>adi<space> 165t
xmap <space><space>add<space> 166t
xmap <space><space>adh<space> 167t
xmap <space><space>adt<space> 168t
xmap <space><space>adn<space> 169t

xmap <space><space>ahs<space> 170t
xmap <space><space>aha<space> 171t
xmap <space><space>aho<space> 172t
xmap <space><space>ahe<space> 173t
xmap <space><space>ahu<space> 174t
xmap <space><space>ahi<space> 175t
xmap <space><space>ahd<space> 176t
xmap <space><space>ahh<space> 177t
xmap <space><space>aht<space> 178t
xmap <space><space>ahn<space> 179t

xmap <space><space>ats<space> 180t
xmap <space><space>ata<space> 181t
xmap <space><space>ato<space> 182t
xmap <space><space>ate<space> 183t
xmap <space><space>atu<space> 184t
xmap <space><space>ati<space> 185t
xmap <space><space>atd<space> 186t
xmap <space><space>ath<space> 187t
xmap <space><space>att<space> 188t
xmap <space><space>atn<space> 189t

xmap <space><space>ans<space> 190t
xmap <space><space>ana<space> 191t
xmap <space><space>ano<space> 192t
xmap <space><space>ane<space> 193t
xmap <space><space>anu<space> 194t
xmap <space><space>ani<space> 195t
xmap <space><space>and<space> 196t
xmap <space><space>anh<space> 197t
xmap <space><space>ant<space> 198t
xmap <space><space>ann<space> 199t

xmap <space><space>asa<space> 201t
xmap <space><space>aso<space> 202t
xmap <space><space>ase<space> 203t
xmap <space><space>asu<space> 204t
xmap <space><space>asi<space> 205t
xmap <space><space>asd<space> 206t
xmap <space><space>ash<space> 207t
xmap <space><space>ast<space> 208t
xmap <space><space>asn<space> 209t

xmap <space><space>oas<space> 210t
xmap <space><space>oaa<space> 211t
xmap <space><space>oao<space> 212t
xmap <space><space>oae<space> 213t
xmap <space><space>oau<space> 214t
xmap <space><space>oai<space> 215t
xmap <space><space>oad<space> 216t
xmap <space><space>oah<space> 217t
xmap <space><space>oat<space> 218t
xmap <space><space>oan<space> 219t

xmap <space><space>oos<space> 220t
xmap <space><space>ooa<space> 221t
xmap <space><space>ooo<space> 222t
xmap <space><space>ooe<space> 223t
xmap <space><space>oou<space> 224t
xmap <space><space>ooi<space> 225t
xmap <space><space>ood<space> 226t
xmap <space><space>ooh<space> 227t
xmap <space><space>oot<space> 228t
xmap <space><space>oon<space> 229t

xmap <space><space>oes<space> 230t
xmap <space><space>oea<space> 231t
xmap <space><space>oeo<space> 232t
xmap <space><space>oee<space> 233t
xmap <space><space>oeu<space> 234t
xmap <space><space>oei<space> 235t
xmap <space><space>oed<space> 236t
xmap <space><space>oeh<space> 237t
xmap <space><space>oet<space> 238t
xmap <space><space>oen<space> 139t

xmap <space><space>ous<space> 240t
xmap <space><space>oua<space> 241t
xmap <space><space>ouo<space> 242t
xmap <space><space>oue<space> 243t
xmap <space><space>ouu<space> 244t
xmap <space><space>oui<space> 245t
xmap <space><space>oud<space> 246t
xmap <space><space>ouh<space> 247t
xmap <space><space>out<space> 248t
xmap <space><space>oun<space> 249t

xmap <space><space>ois<space> 250t
xmap <space><space>oia<space> 251t
xmap <space><space>oio<space> 252t
xmap <space><space>oie<space> 253t
xmap <space><space>oiu<space> 254t
xmap <space><space>oii<space> 255t
xmap <space><space>oid<space> 256t
xmap <space><space>oih<space> 257t
xmap <space><space>oit<space> 258t
xmap <space><space>oin<space> 259t

xmap <space><space>ods<space> 260t
xmap <space><space>oda<space> 261t
xmap <space><space>odo<space> 262t
xmap <space><space>ode<space> 263t
xmap <space><space>odu<space> 264t
xmap <space><space>odi<space> 265t
xmap <space><space>odd<space> 266t
xmap <space><space>odh<space> 267t
xmap <space><space>odt<space> 268t
xmap <space><space>odn<space> 269t

xmap <space><space>ohs<space> 270t
xmap <space><space>oha<space> 271t
xmap <space><space>oho<space> 272t
xmap <space><space>ohe<space> 273t
xmap <space><space>ohu<space> 274t
xmap <space><space>ohi<space> 275t
xmap <space><space>ohd<space> 276t
xmap <space><space>ohh<space> 277t
xmap <space><space>oht<space> 278t
xmap <space><space>ohn<space> 279t

xmap <space><space>ots<space> 280t
xmap <space><space>ota<space> 281t
xmap <space><space>oto<space> 282t
xmap <space><space>ote<space> 283t
xmap <space><space>otu<space> 284t
xmap <space><space>oti<space> 285t
xmap <space><space>otd<space> 286t
xmap <space><space>oth<space> 287t
xmap <space><space>ott<space> 288t
xmap <space><space>otn<space> 289t

xmap <space><space>ons<space> 290t
xmap <space><space>ona<space> 291t
xmap <space><space>ono<space> 292t
xmap <space><space>one<space> 293t
xmap <space><space>onu<space> 294t
xmap <space><space>oni<space> 295t
xmap <space><space>ond<space> 296t
xmap <space><space>onh<space> 297t
xmap <space><space>ont<space> 298t
xmap <space><space>onn<space> 299t

