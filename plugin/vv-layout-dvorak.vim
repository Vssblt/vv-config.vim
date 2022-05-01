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

nnoremap <C-n> jjj
nnoremap <C-t> kkk
nnoremap <c-h> hhh
nnoremap <c-s> lll
xnoremap <c-h> hhh
xnoremap <c-s> lll
xnoremap <c-n> jjj
xnoremap <c-t> kkk

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
nnoremap j <c-y><c-y>:redraw<CR><c-y><c-y>:redraw<CR><c-y><c-y>:redraw<CR><c-y><c-y>:redraw<CR><c-y><c-y>:redraw<CR>
nnoremap k <c-e><c-e>:redraw<CR><c-e><c-e>:redraw<CR><c-e><c-e>:redraw<CR><c-e><c-e>:redraw<CR><c-e><c-e>:redraw<CR>
xnoremap j <c-y><c-y>:redraw<CR><c-y><c-y>:redraw<CR><c-y><c-y>:redraw<CR><c-y><c-y>:redraw<CR><c-y><c-y>:redraw<CR>
xnoremap k <c-e><c-e>:redraw<CR><c-e><c-e>:redraw<CR><c-e><c-e>:redraw<CR><c-e><c-e>:redraw<CR><c-e><c-e>:redraw<CR>

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

nnoremap R :source $MYVIMRC<CR>

nnoremap <leader>- $
nnoremap <leader>d ^
xnoremap <leader>- $
xnoremap <leader>d ^
nnoremap d<leader>- d$
nnoremap d<leader>d d^

nnoremap <space><space> <Esc>/\(\(\[TODO\:\)\\|\(<+\)\).*\(\(\]\)\\|\(+>\)\)<CR>:nohlsearch<CR>"_cgn

" toggle
nnoremap <space>t za  

" create
nnoremap <space>c zf  

" delete
nnoremap <space>d zd

" next
nnoremap <space>k zj

" prev
nnoremap <space>j zk

" toggle
xnoremap <space>t za  

" create
xnoremap <space>c zf  

" delete
xnoremap <space>d zd

" next
xnoremap <space>k zj

" prev
xnoremap <space>j zk

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
nnoremap <leader>q :CocCommand explorer --preset left<CR>
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
let g:VM_custom_remaps = {'s' : 'l', ',d' : 'k', ',-' : 'j', '<c-a>' : '<leader>A'}

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

autocmd FileType c,cpp nnoremap <buffer> <CR> :ToggleBreak<CR>
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

nmap <tab>hs<CR> 70n
nmap <tab>ha<CR> 71n
nmap <tab>ho<CR> 72n
nmap <tab>he<CR> 73n
nmap <tab>hu<CR> 74n
nmap <tab>hi<CR> 75n
nmap <tab>hd<CR> 76n
nmap <tab>hh<CR> 77n
nmap <tab>ht<CR> 78n
nmap <tab>hn<CR> 79n

nmap <tab>ts<CR> 80n
nmap <tab>ta<CR> 81n
nmap <tab>to<CR> 82n
nmap <tab>te<CR> 83n
nmap <tab>tu<CR> 84n
nmap <tab>ti<CR> 85n
nmap <tab>td<CR> 86n
nmap <tab>th<CR> 87n
nmap <tab>tt<CR> 88n
nmap <tab>tn<CR> 89n

nmap <tab>ns<CR> 90n
nmap <tab>na<CR> 91n
nmap <tab>no<CR> 92n
nmap <tab>ne<CR> 93n
nmap <tab>nu<CR> 94n
nmap <tab>ni<CR> 95n
nmap <tab>nd<CR> 96n
nmap <tab>nh<CR> 97n
nmap <tab>nt<CR> 98n
nmap <tab>nn<CR> 99n

nmap <tab>asa<CR> 101n
nmap <tab>aso<CR> 102n
nmap <tab>ase<CR> 103n
nmap <tab>asu<CR> 104n
nmap <tab>asi<CR> 105n
nmap <tab>asd<CR> 106n
nmap <tab>ash<CR> 107n
nmap <tab>ast<CR> 108n
nmap <tab>asn<CR> 109n

nmap <tab>aas<CR> 110n
nmap <tab>aaa<CR> 111n
nmap <tab>aao<CR> 112n
nmap <tab>aae<CR> 113n
nmap <tab>aau<CR> 114n
nmap <tab>aai<CR> 115n
nmap <tab>aad<CR> 116n
nmap <tab>aah<CR> 117n
nmap <tab>aat<CR> 118n
nmap <tab>aan<CR> 119n

nmap <tab>aos<CR> 120n
nmap <tab>aoa<CR> 121n
nmap <tab>aoo<CR> 122n
nmap <tab>aoe<CR> 123n
nmap <tab>aou<CR> 124n
nmap <tab>aoi<CR> 125n
nmap <tab>aod<CR> 126n
nmap <tab>aoh<CR> 127n
nmap <tab>aot<CR> 128n
nmap <tab>aon<CR> 129n

nmap <tab>aes<CR> 130n
nmap <tab>aea<CR> 131n
nmap <tab>aeo<CR> 132n
nmap <tab>aee<CR> 133n
nmap <tab>aeu<CR> 134n
nmap <tab>aei<CR> 135n
nmap <tab>aed<CR> 136n
nmap <tab>aeh<CR> 137n
nmap <tab>aet<CR> 138n
nmap <tab>aen<CR> 139n

nmap <tab>aus<CR> 140n
nmap <tab>aua<CR> 141n
nmap <tab>auo<CR> 142n
nmap <tab>aue<CR> 143n
nmap <tab>auu<CR> 144n
nmap <tab>aui<CR> 145n
nmap <tab>aud<CR> 146n
nmap <tab>auh<CR> 147n
nmap <tab>aut<CR> 148n
nmap <tab>aun<CR> 149n

nmap <tab>ais<CR> 150n
nmap <tab>aia<CR> 151n
nmap <tab>aio<CR> 152n
nmap <tab>aie<CR> 153n
nmap <tab>aiu<CR> 154n
nmap <tab>aii<CR> 155n
nmap <tab>aid<CR> 156n
nmap <tab>aih<CR> 157n
nmap <tab>ait<CR> 158n
nmap <tab>ain<CR> 159n

nmap <tab>ads<CR> 160n
nmap <tab>ada<CR> 161n
nmap <tab>ado<CR> 162n
nmap <tab>ade<CR> 163n
nmap <tab>adu<CR> 164n
nmap <tab>adi<CR> 165n
nmap <tab>add<CR> 166n
nmap <tab>adh<CR> 167n
nmap <tab>adt<CR> 168n
nmap <tab>adn<CR> 169n

nmap <tab>ahs<CR> 170n
nmap <tab>aha<CR> 171n
nmap <tab>aho<CR> 172n
nmap <tab>ahe<CR> 173n
nmap <tab>ahu<CR> 174n
nmap <tab>ahi<CR> 175n
nmap <tab>ahd<CR> 176n
nmap <tab>ahh<CR> 177n
nmap <tab>aht<CR> 178n
nmap <tab>ahn<CR> 179n

nmap <tab>ats<CR> 180n
nmap <tab>ata<CR> 181n
nmap <tab>ato<CR> 182n
nmap <tab>ate<CR> 183n
nmap <tab>atu<CR> 184n
nmap <tab>ati<CR> 185n
nmap <tab>atd<CR> 186n
nmap <tab>ath<CR> 187n
nmap <tab>att<CR> 188n
nmap <tab>atn<CR> 189n

nmap <tab>ans<CR> 190n
nmap <tab>ana<CR> 191n
nmap <tab>ano<CR> 192n
nmap <tab>ane<CR> 193n
nmap <tab>anu<CR> 194n
nmap <tab>ani<CR> 195n
nmap <tab>and<CR> 196n
nmap <tab>anh<CR> 197n
nmap <tab>ant<CR> 198n
nmap <tab>ann<CR> 199n

nmap <tab>osa<CR> 201n
nmap <tab>oso<CR> 202n
nmap <tab>ose<CR> 203n
nmap <tab>osu<CR> 204n
nmap <tab>osi<CR> 205n
nmap <tab>osd<CR> 206n
nmap <tab>osh<CR> 207n
nmap <tab>ost<CR> 208n
nmap <tab>osn<CR> 209n

nmap <tab>oas<CR> 210n
nmap <tab>oaa<CR> 211n
nmap <tab>oao<CR> 212n
nmap <tab>oae<CR> 213n
nmap <tab>oau<CR> 214n
nmap <tab>oai<CR> 215n
nmap <tab>oad<CR> 216n
nmap <tab>oah<CR> 217n
nmap <tab>oat<CR> 218n
nmap <tab>oan<CR> 219n

nmap <tab>oos<CR> 220n
nmap <tab>ooa<CR> 221n
nmap <tab>ooo<CR> 222n
nmap <tab>ooe<CR> 223n
nmap <tab>oou<CR> 224n
nmap <tab>ooi<CR> 225n
nmap <tab>ood<CR> 226n
nmap <tab>ooh<CR> 227n
nmap <tab>oot<CR> 228n
nmap <tab>oon<CR> 229n

nmap <tab>oes<CR> 230n
nmap <tab>oea<CR> 231n
nmap <tab>oeo<CR> 232n
nmap <tab>oee<CR> 233n
nmap <tab>oeu<CR> 234n
nmap <tab>oei<CR> 235n
nmap <tab>oed<CR> 236n
nmap <tab>oeh<CR> 237n
nmap <tab>oet<CR> 238n
nmap <tab>oen<CR> 139n

nmap <tab>ous<CR> 240n
nmap <tab>oua<CR> 241n
nmap <tab>ouo<CR> 242n
nmap <tab>oue<CR> 243n
nmap <tab>ouu<CR> 244n
nmap <tab>oui<CR> 245n
nmap <tab>oud<CR> 246n
nmap <tab>ouh<CR> 247n
nmap <tab>out<CR> 248n
nmap <tab>oun<CR> 249n

nmap <tab>ois<CR> 250n
nmap <tab>oia<CR> 251n
nmap <tab>oio<CR> 252n
nmap <tab>oie<CR> 253n
nmap <tab>oiu<CR> 254n
nmap <tab>oii<CR> 255n
nmap <tab>oid<CR> 256n
nmap <tab>oih<CR> 257n
nmap <tab>oit<CR> 258n
nmap <tab>oin<CR> 259n

nmap <tab>ods<CR> 260n
nmap <tab>oda<CR> 261n
nmap <tab>odo<CR> 262n
nmap <tab>ode<CR> 263n
nmap <tab>odu<CR> 264n
nmap <tab>odi<CR> 265n
nmap <tab>odd<CR> 266n
nmap <tab>odh<CR> 267n
nmap <tab>odt<CR> 268n
nmap <tab>odn<CR> 269n

nmap <tab>ohs<CR> 270n
nmap <tab>oha<CR> 271n
nmap <tab>oho<CR> 272n
nmap <tab>ohe<CR> 273n
nmap <tab>ohu<CR> 274n
nmap <tab>ohi<CR> 275n
nmap <tab>ohd<CR> 276n
nmap <tab>ohh<CR> 277n
nmap <tab>oht<CR> 278n
nmap <tab>ohn<CR> 279n

nmap <tab>ots<CR> 280n
nmap <tab>ota<CR> 281n
nmap <tab>oto<CR> 282n
nmap <tab>ote<CR> 283n
nmap <tab>otu<CR> 284n
nmap <tab>oti<CR> 285n
nmap <tab>otd<CR> 286n
nmap <tab>oth<CR> 287n
nmap <tab>ott<CR> 288n
nmap <tab>otn<CR> 289n

nmap <tab>ons<CR> 290n
nmap <tab>ona<CR> 291n
nmap <tab>ono<CR> 292n
nmap <tab>one<CR> 293n
nmap <tab>onu<CR> 294n
nmap <tab>oni<CR> 295n
nmap <tab>ond<CR> 296n
nmap <tab>onh<CR> 297n
nmap <tab>ont<CR> 298n
nmap <tab>onn<CR> 299n







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

nmap <tab><tab>hs<CR> 70t
nmap <tab><tab>ha<CR> 71t
nmap <tab><tab>ho<CR> 72t
nmap <tab><tab>he<CR> 73t
nmap <tab><tab>hu<CR> 74t
nmap <tab><tab>hi<CR> 75t
nmap <tab><tab>hd<CR> 76t
nmap <tab><tab>hh<CR> 77t
nmap <tab><tab>ht<CR> 78t
nmap <tab><tab>hn<CR> 79t

nmap <tab><tab>ts<CR> 80t
nmap <tab><tab>ta<CR> 81t
nmap <tab><tab>to<CR> 82t
nmap <tab><tab>te<CR> 83t
nmap <tab><tab>tu<CR> 84t
nmap <tab><tab>ti<CR> 85t
nmap <tab><tab>td<CR> 86t
nmap <tab><tab>th<CR> 87t
nmap <tab><tab>tt<CR> 88t
nmap <tab><tab>tn<CR> 89t

nmap <tab><tab>ns<CR> 90t
nmap <tab><tab>na<CR> 91t
nmap <tab><tab>no<CR> 92t
nmap <tab><tab>ne<CR> 93t
nmap <tab><tab>nu<CR> 94t
nmap <tab><tab>ni<CR> 95t
nmap <tab><tab>nd<CR> 96t
nmap <tab><tab>nh<CR> 97t
nmap <tab><tab>nt<CR> 98t
nmap <tab><tab>nn<CR> 99t

nmap <tab><tab>asa<CR> 101t
nmap <tab><tab>aso<CR> 102t
nmap <tab><tab>ase<CR> 103t
nmap <tab><tab>asu<CR> 104t
nmap <tab><tab>asi<CR> 105t
nmap <tab><tab>asd<CR> 106t
nmap <tab><tab>ash<CR> 107t
nmap <tab><tab>ast<CR> 108t
nmap <tab><tab>asn<CR> 109t

nmap <tab><tab>aas<CR> 110t
nmap <tab><tab>aaa<CR> 111t
nmap <tab><tab>aao<CR> 112t
nmap <tab><tab>aae<CR> 113t
nmap <tab><tab>aau<CR> 114t
nmap <tab><tab>aai<CR> 115t
nmap <tab><tab>aad<CR> 116t
nmap <tab><tab>aah<CR> 117t
nmap <tab><tab>aat<CR> 118t
nmap <tab><tab>aan<CR> 119t

nmap <tab><tab>aos<CR> 120t
nmap <tab><tab>aoa<CR> 121t
nmap <tab><tab>aoo<CR> 122t
nmap <tab><tab>aoe<CR> 123t
nmap <tab><tab>aou<CR> 124t
nmap <tab><tab>aoi<CR> 125t
nmap <tab><tab>aod<CR> 126t
nmap <tab><tab>aoh<CR> 127t
nmap <tab><tab>aot<CR> 128t
nmap <tab><tab>aon<CR> 129t

nmap <tab><tab>aes<CR> 130t
nmap <tab><tab>aea<CR> 131t
nmap <tab><tab>aeo<CR> 132t
nmap <tab><tab>aee<CR> 133t
nmap <tab><tab>aeu<CR> 134t
nmap <tab><tab>aei<CR> 135t
nmap <tab><tab>aed<CR> 136t
nmap <tab><tab>aeh<CR> 137t
nmap <tab><tab>aet<CR> 138t
nmap <tab><tab>aen<CR> 139t

nmap <tab><tab>aus<CR> 140t
nmap <tab><tab>aua<CR> 141t
nmap <tab><tab>auo<CR> 142t
nmap <tab><tab>aue<CR> 143t
nmap <tab><tab>auu<CR> 144t
nmap <tab><tab>aui<CR> 145t
nmap <tab><tab>aud<CR> 146t
nmap <tab><tab>auh<CR> 147t
nmap <tab><tab>aut<CR> 148t
nmap <tab><tab>aun<CR> 149t

nmap <tab><tab>ais<CR> 150t
nmap <tab><tab>aia<CR> 151t
nmap <tab><tab>aio<CR> 152t
nmap <tab><tab>aie<CR> 153t
nmap <tab><tab>aiu<CR> 154t
nmap <tab><tab>aii<CR> 155t
nmap <tab><tab>aid<CR> 156t
nmap <tab><tab>aih<CR> 157t
nmap <tab><tab>ait<CR> 158t
nmap <tab><tab>ain<CR> 159t

nmap <tab><tab>ads<CR> 160t
nmap <tab><tab>ada<CR> 161t
nmap <tab><tab>ado<CR> 162t
nmap <tab><tab>ade<CR> 163t
nmap <tab><tab>adu<CR> 164t
nmap <tab><tab>adi<CR> 165t
nmap <tab><tab>add<CR> 166t
nmap <tab><tab>adh<CR> 167t
nmap <tab><tab>adt<CR> 168t
nmap <tab><tab>adn<CR> 169t

nmap <tab><tab>ahs<CR> 170t
nmap <tab><tab>aha<CR> 171t
nmap <tab><tab>aho<CR> 172t
nmap <tab><tab>ahe<CR> 173t
nmap <tab><tab>ahu<CR> 174t
nmap <tab><tab>ahi<CR> 175t
nmap <tab><tab>ahd<CR> 176t
nmap <tab><tab>ahh<CR> 177t
nmap <tab><tab>aht<CR> 178t
nmap <tab><tab>ahn<CR> 179t

nmap <tab><tab>ats<CR> 180t
nmap <tab><tab>ata<CR> 181t
nmap <tab><tab>ato<CR> 182t
nmap <tab><tab>ate<CR> 183t
nmap <tab><tab>atu<CR> 184t
nmap <tab><tab>ati<CR> 185t
nmap <tab><tab>atd<CR> 186t
nmap <tab><tab>ath<CR> 187t
nmap <tab><tab>att<CR> 188t
nmap <tab><tab>atn<CR> 189t

nmap <tab><tab>ans<CR> 190t
nmap <tab><tab>ana<CR> 191t
nmap <tab><tab>ano<CR> 192t
nmap <tab><tab>ane<CR> 193t
nmap <tab><tab>anu<CR> 194t
nmap <tab><tab>ani<CR> 195t
nmap <tab><tab>and<CR> 196t
nmap <tab><tab>anh<CR> 197t
nmap <tab><tab>ant<CR> 198t
nmap <tab><tab>ann<CR> 199t

nmap <tab><tab>osa<CR> 201t
nmap <tab><tab>oso<CR> 202t
nmap <tab><tab>ose<CR> 203t
nmap <tab><tab>osu<CR> 204t
nmap <tab><tab>osi<CR> 205t
nmap <tab><tab>osd<CR> 206t
nmap <tab><tab>osh<CR> 207t
nmap <tab><tab>ost<CR> 208t
nmap <tab><tab>osn<CR> 209t

nmap <tab><tab>oas<CR> 210t
nmap <tab><tab>oaa<CR> 211t
nmap <tab><tab>oao<CR> 212t
nmap <tab><tab>oae<CR> 213t
nmap <tab><tab>oau<CR> 214t
nmap <tab><tab>oai<CR> 215t
nmap <tab><tab>oad<CR> 216t
nmap <tab><tab>oah<CR> 217t
nmap <tab><tab>oat<CR> 218t
nmap <tab><tab>oan<CR> 219t

nmap <tab><tab>oos<CR> 220t
nmap <tab><tab>ooa<CR> 221t
nmap <tab><tab>ooo<CR> 222t
nmap <tab><tab>ooe<CR> 223t
nmap <tab><tab>oou<CR> 224t
nmap <tab><tab>ooi<CR> 225t
nmap <tab><tab>ood<CR> 226t
nmap <tab><tab>ooh<CR> 227t
nmap <tab><tab>oot<CR> 228t
nmap <tab><tab>oon<CR> 229t

nmap <tab><tab>oes<CR> 230t
nmap <tab><tab>oea<CR> 231t
nmap <tab><tab>oeo<CR> 232t
nmap <tab><tab>oee<CR> 233t
nmap <tab><tab>oeu<CR> 234t
nmap <tab><tab>oei<CR> 235t
nmap <tab><tab>oed<CR> 236t
nmap <tab><tab>oeh<CR> 237t
nmap <tab><tab>oet<CR> 238t
nmap <tab><tab>oen<CR> 139t

nmap <tab><tab>ous<CR> 240t
nmap <tab><tab>oua<CR> 241t
nmap <tab><tab>ouo<CR> 242t
nmap <tab><tab>oue<CR> 243t
nmap <tab><tab>ouu<CR> 244t
nmap <tab><tab>oui<CR> 245t
nmap <tab><tab>oud<CR> 246t
nmap <tab><tab>ouh<CR> 247t
nmap <tab><tab>out<CR> 248t
nmap <tab><tab>oun<CR> 249t

nmap <tab><tab>ois<CR> 250t
nmap <tab><tab>oia<CR> 251t
nmap <tab><tab>oio<CR> 252t
nmap <tab><tab>oie<CR> 253t
nmap <tab><tab>oiu<CR> 254t
nmap <tab><tab>oii<CR> 255t
nmap <tab><tab>oid<CR> 256t
nmap <tab><tab>oih<CR> 257t
nmap <tab><tab>oit<CR> 258t
nmap <tab><tab>oin<CR> 259t

nmap <tab><tab>ods<CR> 260t
nmap <tab><tab>oda<CR> 261t
nmap <tab><tab>odo<CR> 262t
nmap <tab><tab>ode<CR> 263t
nmap <tab><tab>odu<CR> 264t
nmap <tab><tab>odi<CR> 265t
nmap <tab><tab>odd<CR> 266t
nmap <tab><tab>odh<CR> 267t
nmap <tab><tab>odt<CR> 268t
nmap <tab><tab>odn<CR> 269t

nmap <tab><tab>ohs<CR> 270t
nmap <tab><tab>oha<CR> 271t
nmap <tab><tab>oho<CR> 272t
nmap <tab><tab>ohe<CR> 273t
nmap <tab><tab>ohu<CR> 274t
nmap <tab><tab>ohi<CR> 275t
nmap <tab><tab>ohd<CR> 276t
nmap <tab><tab>ohh<CR> 277t
nmap <tab><tab>oht<CR> 278t
nmap <tab><tab>ohn<CR> 279t

nmap <tab><tab>ots<CR> 280t
nmap <tab><tab>ota<CR> 281t
nmap <tab><tab>oto<CR> 282t
nmap <tab><tab>ote<CR> 283t
nmap <tab><tab>otu<CR> 284t
nmap <tab><tab>oti<CR> 285t
nmap <tab><tab>otd<CR> 286t
nmap <tab><tab>oth<CR> 287t
nmap <tab><tab>ott<CR> 288t
nmap <tab><tab>otn<CR> 289t

nmap <tab><tab>ons<CR> 290t
nmap <tab><tab>ona<CR> 291t
nmap <tab><tab>ono<CR> 292t
nmap <tab><tab>one<CR> 293t
nmap <tab><tab>onu<CR> 294t
nmap <tab><tab>oni<CR> 295t
nmap <tab><tab>ond<CR> 296t
nmap <tab><tab>onh<CR> 297t
nmap <tab><tab>ont<CR> 298t
nmap <tab><tab>onn<CR> 299t

xmap <tab>a<CR> 1n
xmap <tab>o<CR> 2n
xmap <tab>e<CR> 3n
xmap <tab>u<CR> 4n
xmap <tab>i<CR> 5n
xmap <tab>d<CR> 6n
xmap <tab>h<CR> 7n
xmap <tab>t<CR> 8n
xmap <tab>n<CR> 9n

xmap <tab>as<CR> 10n
xmap <tab>aa<CR> 11n
xmap <tab>ao<CR> 12n
xmap <tab>ae<CR> 13n
xmap <tab>au<CR> 14n
xmap <tab>ai<CR> 15n
xmap <tab>ad<CR> 16n
xmap <tab>ah<CR> 17n
xmap <tab>at<CR> 18n
xmap <tab>an<CR> 19n

xmap <tab>os<CR> 20n
xmap <tab>oa<CR> 21n
xmap <tab>oo<CR> 22n
xmap <tab>oe<CR> 23n
xmap <tab>ou<CR> 24n
xmap <tab>oi<CR> 25n
xmap <tab>od<CR> 26n
xmap <tab>oh<CR> 27n
xmap <tab>ot<CR> 28n
xmap <tab>on<CR> 29n

xmap <tab>es<CR> 30n
xmap <tab>ea<CR> 31n
xmap <tab>eo<CR> 32n
xmap <tab>ee<CR> 33n
xmap <tab>eu<CR> 34n
xmap <tab>ei<CR> 35n
xmap <tab>ed<CR> 36n
xmap <tab>eh<CR> 37n
xmap <tab>et<CR> 38n
xmap <tab>en<CR> 39n

xmap <tab>us<CR> 40n
xmap <tab>ua<CR> 41n
xmap <tab>uo<CR> 42n
xmap <tab>ue<CR> 43n
xmap <tab>uu<CR> 44n
xmap <tab>ui<CR> 45n
xmap <tab>ud<CR> 46n
xmap <tab>uh<CR> 47n
xmap <tab>ut<CR> 48n
xmap <tab>un<CR> 49n

xmap <tab>is<CR> 50n
xmap <tab>ia<CR> 51n
xmap <tab>io<CR> 52n
xmap <tab>ie<CR> 53n
xmap <tab>iu<CR> 54n
xmap <tab>ii<CR> 55n
xmap <tab>id<CR> 56n
xmap <tab>ih<CR> 57n
xmap <tab>it<CR> 58n
xmap <tab>in<CR> 59n

xmap <tab>ds<CR> 60n
xmap <tab>da<CR> 61n
xmap <tab>do<CR> 62n
xmap <tab>de<CR> 63n
xmap <tab>du<CR> 64n
xmap <tab>di<CR> 65n
xmap <tab>dd<CR> 66n
xmap <tab>dh<CR> 67n
xmap <tab>dt<CR> 68n
xmap <tab>dn<CR> 69n

xmap <tab>hs<CR> 70n
xmap <tab>ha<CR> 71n
xmap <tab>ho<CR> 72n
xmap <tab>he<CR> 73n
xmap <tab>hu<CR> 74n
xmap <tab>hi<CR> 75n
xmap <tab>hd<CR> 76n
xmap <tab>hh<CR> 77n
xmap <tab>ht<CR> 78n
xmap <tab>hn<CR> 79n

xmap <tab>ts<CR> 80n
xmap <tab>ta<CR> 81n
xmap <tab>to<CR> 82n
xmap <tab>te<CR> 83n
xmap <tab>tu<CR> 84n
xmap <tab>ti<CR> 85n
xmap <tab>td<CR> 86n
xmap <tab>th<CR> 87n
xmap <tab>tt<CR> 88n
xmap <tab>tn<CR> 89n

xmap <tab>ns<CR> 90n
xmap <tab>na<CR> 91n
xmap <tab>no<CR> 92n
xmap <tab>ne<CR> 93n
xmap <tab>nu<CR> 94n
xmap <tab>ni<CR> 95n
xmap <tab>nd<CR> 96n
xmap <tab>nh<CR> 97n
xmap <tab>nt<CR> 98n
xmap <tab>nn<CR> 99n

xmap <tab>asa<CR> 101n
xmap <tab>aso<CR> 102n
xmap <tab>ase<CR> 103n
xmap <tab>asu<CR> 104n
xmap <tab>asi<CR> 105n
xmap <tab>asd<CR> 106n
xmap <tab>ash<CR> 107n
xmap <tab>ast<CR> 108n
xmap <tab>asn<CR> 109n

xmap <tab>aas<CR> 110n
xmap <tab>aaa<CR> 111n
xmap <tab>aao<CR> 112n
xmap <tab>aae<CR> 113n
xmap <tab>aau<CR> 114n
xmap <tab>aai<CR> 115n
xmap <tab>aad<CR> 116n
xmap <tab>aah<CR> 117n
xmap <tab>aat<CR> 118n
xmap <tab>aan<CR> 119n

xmap <tab>aos<CR> 120n
xmap <tab>aoa<CR> 121n
xmap <tab>aoo<CR> 122n
xmap <tab>aoe<CR> 123n
xmap <tab>aou<CR> 124n
xmap <tab>aoi<CR> 125n
xmap <tab>aod<CR> 126n
xmap <tab>aoh<CR> 127n
xmap <tab>aot<CR> 128n
xmap <tab>aon<CR> 129n

xmap <tab>aes<CR> 130n
xmap <tab>aea<CR> 131n
xmap <tab>aeo<CR> 132n
xmap <tab>aee<CR> 133n
xmap <tab>aeu<CR> 134n
xmap <tab>aei<CR> 135n
xmap <tab>aed<CR> 136n
xmap <tab>aeh<CR> 137n
xmap <tab>aet<CR> 138n
xmap <tab>aen<CR> 139n

xmap <tab>aus<CR> 140n
xmap <tab>aua<CR> 141n
xmap <tab>auo<CR> 142n
xmap <tab>aue<CR> 143n
xmap <tab>auu<CR> 144n
xmap <tab>aui<CR> 145n
xmap <tab>aud<CR> 146n
xmap <tab>auh<CR> 147n
xmap <tab>aut<CR> 148n
xmap <tab>aun<CR> 149n

xmap <tab>ais<CR> 150n
xmap <tab>aia<CR> 151n
xmap <tab>aio<CR> 152n
xmap <tab>aie<CR> 153n
xmap <tab>aiu<CR> 154n
xmap <tab>aii<CR> 155n
xmap <tab>aid<CR> 156n
xmap <tab>aih<CR> 157n
xmap <tab>ait<CR> 158n
xmap <tab>ain<CR> 159n

xmap <tab>ads<CR> 160n
xmap <tab>ada<CR> 161n
xmap <tab>ado<CR> 162n
xmap <tab>ade<CR> 163n
xmap <tab>adu<CR> 164n
xmap <tab>adi<CR> 165n
xmap <tab>add<CR> 166n
xmap <tab>adh<CR> 167n
xmap <tab>adt<CR> 168n
xmap <tab>adn<CR> 169n

xmap <tab>ahs<CR> 170n
xmap <tab>aha<CR> 171n
xmap <tab>aho<CR> 172n
xmap <tab>ahe<CR> 173n
xmap <tab>ahu<CR> 174n
xmap <tab>ahi<CR> 175n
xmap <tab>ahd<CR> 176n
xmap <tab>ahh<CR> 177n
xmap <tab>aht<CR> 178n
xmap <tab>ahn<CR> 179n

xmap <tab>ats<CR> 180n
xmap <tab>ata<CR> 181n
xmap <tab>ato<CR> 182n
xmap <tab>ate<CR> 183n
xmap <tab>atu<CR> 184n
xmap <tab>ati<CR> 185n
xmap <tab>atd<CR> 186n
xmap <tab>ath<CR> 187n
xmap <tab>att<CR> 188n
xmap <tab>atn<CR> 189n

xmap <tab>ans<CR> 190n
xmap <tab>ana<CR> 191n
xmap <tab>ano<CR> 192n
xmap <tab>ane<CR> 193n
xmap <tab>anu<CR> 194n
xmap <tab>ani<CR> 195n
xmap <tab>and<CR> 196n
xmap <tab>anh<CR> 197n
xmap <tab>ant<CR> 198n
xmap <tab>ann<CR> 199n

xmap <tab>asa<CR> 201n
xmap <tab>aso<CR> 202n
xmap <tab>ase<CR> 203n
xmap <tab>asu<CR> 204n
xmap <tab>asi<CR> 205n
xmap <tab>asd<CR> 206n
xmap <tab>ash<CR> 207n
xmap <tab>ast<CR> 208n
xmap <tab>asn<CR> 209n

xmap <tab>oas<CR> 210n
xmap <tab>oaa<CR> 211n
xmap <tab>oao<CR> 212n
xmap <tab>oae<CR> 213n
xmap <tab>oau<CR> 214n
xmap <tab>oai<CR> 215n
xmap <tab>oad<CR> 216n
xmap <tab>oah<CR> 217n
xmap <tab>oat<CR> 218n
xmap <tab>oan<CR> 219n

xmap <tab>oos<CR> 220n
xmap <tab>ooa<CR> 221n
xmap <tab>ooo<CR> 222n
xmap <tab>ooe<CR> 223n
xmap <tab>oou<CR> 224n
xmap <tab>ooi<CR> 225n
xmap <tab>ood<CR> 226n
xmap <tab>ooh<CR> 227n
xmap <tab>oot<CR> 228n
xmap <tab>oon<CR> 229n

xmap <tab>oes<CR> 230n
xmap <tab>oea<CR> 231n
xmap <tab>oeo<CR> 232n
xmap <tab>oee<CR> 233n
xmap <tab>oeu<CR> 234n
xmap <tab>oei<CR> 235n
xmap <tab>oed<CR> 236n
xmap <tab>oeh<CR> 237n
xmap <tab>oet<CR> 238n
xmap <tab>oen<CR> 139n

xmap <tab>ous<CR> 240n
xmap <tab>oua<CR> 241n
xmap <tab>ouo<CR> 242n
xmap <tab>oue<CR> 243n
xmap <tab>ouu<CR> 244n
xmap <tab>oui<CR> 245n
xmap <tab>oud<CR> 246n
xmap <tab>ouh<CR> 247n
xmap <tab>out<CR> 248n
xmap <tab>oun<CR> 249n

xmap <tab>ois<CR> 250n
xmap <tab>oia<CR> 251n
xmap <tab>oio<CR> 252n
xmap <tab>oie<CR> 253n
xmap <tab>oiu<CR> 254n
xmap <tab>oii<CR> 255n
xmap <tab>oid<CR> 256n
xmap <tab>oih<CR> 257n
xmap <tab>oit<CR> 258n
xmap <tab>oin<CR> 259n

xmap <tab>ods<CR> 260n
xmap <tab>oda<CR> 261n
xmap <tab>odo<CR> 262n
xmap <tab>ode<CR> 263n
xmap <tab>odu<CR> 264n
xmap <tab>odi<CR> 265n
xmap <tab>odd<CR> 266n
xmap <tab>odh<CR> 267n
xmap <tab>odt<CR> 268n
xmap <tab>odn<CR> 269n

xmap <tab>ohs<CR> 270n
xmap <tab>oha<CR> 271n
xmap <tab>oho<CR> 272n
xmap <tab>ohe<CR> 273n
xmap <tab>ohu<CR> 274n
xmap <tab>ohi<CR> 275n
xmap <tab>ohd<CR> 276n
xmap <tab>ohh<CR> 277n
xmap <tab>oht<CR> 278n
xmap <tab>ohn<CR> 279n

xmap <tab>ots<CR> 280n
xmap <tab>ota<CR> 281n
xmap <tab>oto<CR> 282n
xmap <tab>ote<CR> 283n
xmap <tab>otu<CR> 284n
xmap <tab>oti<CR> 285n
xmap <tab>otd<CR> 286n
xmap <tab>oth<CR> 287n
xmap <tab>ott<CR> 288n
xmap <tab>otn<CR> 289n

xmap <tab>ons<CR> 290n
xmap <tab>ona<CR> 291n
xmap <tab>ono<CR> 292n
xmap <tab>one<CR> 293n
xmap <tab>onu<CR> 294n
xmap <tab>oni<CR> 295n
xmap <tab>ond<CR> 296n
xmap <tab>onh<CR> 297n
xmap <tab>ont<CR> 298n
xmap <tab>onn<CR> 299n







xmap <tab><tab>a<CR> 1t
xmap <tab><tab>o<CR> 2t
xmap <tab><tab>e<CR> 3t
xmap <tab><tab>u<CR> 4t
xmap <tab><tab>i<CR> 5t
xmap <tab><tab>d<CR> 6t
xmap <tab><tab>h<CR> 7t
xmap <tab><tab>t<CR> 8t
xmap <tab><tab>n<CR> 9t

xmap <tab><tab>as<CR> 10t
xmap <tab><tab>aa<CR> 11t
xmap <tab><tab>ao<CR> 12t
xmap <tab><tab>ae<CR> 13t
xmap <tab><tab>au<CR> 14t
xmap <tab><tab>ai<CR> 15t
xmap <tab><tab>ad<CR> 16t
xmap <tab><tab>ah<CR> 17t
xmap <tab><tab>at<CR> 18t
xmap <tab><tab>an<CR> 19t

xmap <tab><tab>os<CR> 20t
xmap <tab><tab>oa<CR> 21t
xmap <tab><tab>oo<CR> 22t
xmap <tab><tab>oe<CR> 23t
xmap <tab><tab>ou<CR> 24t
xmap <tab><tab>oi<CR> 25t
xmap <tab><tab>od<CR> 26t
xmap <tab><tab>oh<CR> 27t
xmap <tab><tab>ot<CR> 28t
xmap <tab><tab>on<CR> 29t

xmap <tab><tab>es<CR> 30t
xmap <tab><tab>ea<CR> 31t
xmap <tab><tab>eo<CR> 32t
xmap <tab><tab>ee<CR> 33t
xmap <tab><tab>eu<CR> 34t
xmap <tab><tab>ei<CR> 35t
xmap <tab><tab>ed<CR> 36t
xmap <tab><tab>eh<CR> 37t
xmap <tab><tab>et<CR> 38t
xmap <tab><tab>en<CR> 39t

xmap <tab><tab>us<CR> 40t
xmap <tab><tab>ua<CR> 41t
xmap <tab><tab>uo<CR> 42t
xmap <tab><tab>ue<CR> 43t
xmap <tab><tab>uu<CR> 44t
xmap <tab><tab>ui<CR> 45t
xmap <tab><tab>ud<CR> 46t
xmap <tab><tab>uh<CR> 47t
xmap <tab><tab>ut<CR> 48t
xmap <tab><tab>un<CR> 49t

xmap <tab><tab>is<CR> 50t
xmap <tab><tab>ia<CR> 51t
xmap <tab><tab>io<CR> 52t
xmap <tab><tab>ie<CR> 53t
xmap <tab><tab>iu<CR> 54t
xmap <tab><tab>ii<CR> 55t
xmap <tab><tab>id<CR> 56t
xmap <tab><tab>ih<CR> 57t
xmap <tab><tab>it<CR> 58t
xmap <tab><tab>in<CR> 59t

xmap <tab><tab>ds<CR> 60t
xmap <tab><tab>da<CR> 61t
xmap <tab><tab>do<CR> 62t
xmap <tab><tab>de<CR> 63t
xmap <tab><tab>du<CR> 64t
xmap <tab><tab>di<CR> 65t
xmap <tab><tab>dd<CR> 66t
xmap <tab><tab>dh<CR> 67t
xmap <tab><tab>dt<CR> 68t
xmap <tab><tab>dn<CR> 69t

xmap <tab><tab>hs<CR> 70t
xmap <tab><tab>ha<CR> 71t
xmap <tab><tab>ho<CR> 72t
xmap <tab><tab>he<CR> 73t
xmap <tab><tab>hu<CR> 74t
xmap <tab><tab>hi<CR> 75t
xmap <tab><tab>hd<CR> 76t
xmap <tab><tab>hh<CR> 77t
xmap <tab><tab>ht<CR> 78t
xmap <tab><tab>hn<CR> 79t

xmap <tab><tab>ts<CR> 80t
xmap <tab><tab>ta<CR> 81t
xmap <tab><tab>to<CR> 82t
xmap <tab><tab>te<CR> 83t
xmap <tab><tab>tu<CR> 84t
xmap <tab><tab>ti<CR> 85t
xmap <tab><tab>td<CR> 86t
xmap <tab><tab>th<CR> 87t
xmap <tab><tab>tt<CR> 88t
xmap <tab><tab>tn<CR> 89t

xmap <tab><tab>ns<CR> 90t
xmap <tab><tab>na<CR> 91t
xmap <tab><tab>no<CR> 92t
xmap <tab><tab>ne<CR> 93t
xmap <tab><tab>nu<CR> 94t
xmap <tab><tab>ni<CR> 95t
xmap <tab><tab>nd<CR> 96t
xmap <tab><tab>nh<CR> 97t
xmap <tab><tab>nt<CR> 98t
xmap <tab><tab>nn<CR> 99t

xmap <tab><tab>asa<CR> 101t
xmap <tab><tab>aso<CR> 102t
xmap <tab><tab>ase<CR> 103t
xmap <tab><tab>asu<CR> 104t
xmap <tab><tab>asi<CR> 105t
xmap <tab><tab>asd<CR> 106t
xmap <tab><tab>ash<CR> 107t
xmap <tab><tab>ast<CR> 108t
xmap <tab><tab>asn<CR> 109t

xmap <tab><tab>aas<CR> 110t
xmap <tab><tab>aaa<CR> 111t
xmap <tab><tab>aao<CR> 112t
xmap <tab><tab>aae<CR> 113t
xmap <tab><tab>aau<CR> 114t
xmap <tab><tab>aai<CR> 115t
xmap <tab><tab>aad<CR> 116t
xmap <tab><tab>aah<CR> 117t
xmap <tab><tab>aat<CR> 118t
xmap <tab><tab>aan<CR> 119t

xmap <tab><tab>aos<CR> 120t
xmap <tab><tab>aoa<CR> 121t
xmap <tab><tab>aoo<CR> 122t
xmap <tab><tab>aoe<CR> 123t
xmap <tab><tab>aou<CR> 124t
xmap <tab><tab>aoi<CR> 125t
xmap <tab><tab>aod<CR> 126t
xmap <tab><tab>aoh<CR> 127t
xmap <tab><tab>aot<CR> 128t
xmap <tab><tab>aon<CR> 129t

xmap <tab><tab>aes<CR> 130t
xmap <tab><tab>aea<CR> 131t
xmap <tab><tab>aeo<CR> 132t
xmap <tab><tab>aee<CR> 133t
xmap <tab><tab>aeu<CR> 134t
xmap <tab><tab>aei<CR> 135t
xmap <tab><tab>aed<CR> 136t
xmap <tab><tab>aeh<CR> 137t
xmap <tab><tab>aet<CR> 138t
xmap <tab><tab>aen<CR> 139t

xmap <tab><tab>aus<CR> 140t
xmap <tab><tab>aua<CR> 141t
xmap <tab><tab>auo<CR> 142t
xmap <tab><tab>aue<CR> 143t
xmap <tab><tab>auu<CR> 144t
xmap <tab><tab>aui<CR> 145t
xmap <tab><tab>aud<CR> 146t
xmap <tab><tab>auh<CR> 147t
xmap <tab><tab>aut<CR> 148t
xmap <tab><tab>aun<CR> 149t

xmap <tab><tab>ais<CR> 150t
xmap <tab><tab>aia<CR> 151t
xmap <tab><tab>aio<CR> 152t
xmap <tab><tab>aie<CR> 153t
xmap <tab><tab>aiu<CR> 154t
xmap <tab><tab>aii<CR> 155t
xmap <tab><tab>aid<CR> 156t
xmap <tab><tab>aih<CR> 157t
xmap <tab><tab>ait<CR> 158t
xmap <tab><tab>ain<CR> 159t

xmap <tab><tab>ads<CR> 160t
xmap <tab><tab>ada<CR> 161t
xmap <tab><tab>ado<CR> 162t
xmap <tab><tab>ade<CR> 163t
xmap <tab><tab>adu<CR> 164t
xmap <tab><tab>adi<CR> 165t
xmap <tab><tab>add<CR> 166t
xmap <tab><tab>adh<CR> 167t
xmap <tab><tab>adt<CR> 168t
xmap <tab><tab>adn<CR> 169t

xmap <tab><tab>ahs<CR> 170t
xmap <tab><tab>aha<CR> 171t
xmap <tab><tab>aho<CR> 172t
xmap <tab><tab>ahe<CR> 173t
xmap <tab><tab>ahu<CR> 174t
xmap <tab><tab>ahi<CR> 175t
xmap <tab><tab>ahd<CR> 176t
xmap <tab><tab>ahh<CR> 177t
xmap <tab><tab>aht<CR> 178t
xmap <tab><tab>ahn<CR> 179t

xmap <tab><tab>ats<CR> 180t
xmap <tab><tab>ata<CR> 181t
xmap <tab><tab>ato<CR> 182t
xmap <tab><tab>ate<CR> 183t
xmap <tab><tab>atu<CR> 184t
xmap <tab><tab>ati<CR> 185t
xmap <tab><tab>atd<CR> 186t
xmap <tab><tab>ath<CR> 187t
xmap <tab><tab>att<CR> 188t
xmap <tab><tab>atn<CR> 189t

xmap <tab><tab>ans<CR> 190t
xmap <tab><tab>ana<CR> 191t
xmap <tab><tab>ano<CR> 192t
xmap <tab><tab>ane<CR> 193t
xmap <tab><tab>anu<CR> 194t
xmap <tab><tab>ani<CR> 195t
xmap <tab><tab>and<CR> 196t
xmap <tab><tab>anh<CR> 197t
xmap <tab><tab>ant<CR> 198t
xmap <tab><tab>ann<CR> 199t

xmap <tab><tab>asa<CR> 201t
xmap <tab><tab>aso<CR> 202t
xmap <tab><tab>ase<CR> 203t
xmap <tab><tab>asu<CR> 204t
xmap <tab><tab>asi<CR> 205t
xmap <tab><tab>asd<CR> 206t
xmap <tab><tab>ash<CR> 207t
xmap <tab><tab>ast<CR> 208t
xmap <tab><tab>asn<CR> 209t

xmap <tab><tab>oas<CR> 210t
xmap <tab><tab>oaa<CR> 211t
xmap <tab><tab>oao<CR> 212t
xmap <tab><tab>oae<CR> 213t
xmap <tab><tab>oau<CR> 214t
xmap <tab><tab>oai<CR> 215t
xmap <tab><tab>oad<CR> 216t
xmap <tab><tab>oah<CR> 217t
xmap <tab><tab>oat<CR> 218t
xmap <tab><tab>oan<CR> 219t

xmap <tab><tab>oos<CR> 220t
xmap <tab><tab>ooa<CR> 221t
xmap <tab><tab>ooo<CR> 222t
xmap <tab><tab>ooe<CR> 223t
xmap <tab><tab>oou<CR> 224t
xmap <tab><tab>ooi<CR> 225t
xmap <tab><tab>ood<CR> 226t
xmap <tab><tab>ooh<CR> 227t
xmap <tab><tab>oot<CR> 228t
xmap <tab><tab>oon<CR> 229t

xmap <tab><tab>oes<CR> 230t
xmap <tab><tab>oea<CR> 231t
xmap <tab><tab>oeo<CR> 232t
xmap <tab><tab>oee<CR> 233t
xmap <tab><tab>oeu<CR> 234t
xmap <tab><tab>oei<CR> 235t
xmap <tab><tab>oed<CR> 236t
xmap <tab><tab>oeh<CR> 237t
xmap <tab><tab>oet<CR> 238t
xmap <tab><tab>oen<CR> 139t

xmap <tab><tab>ous<CR> 240t
xmap <tab><tab>oua<CR> 241t
xmap <tab><tab>ouo<CR> 242t
xmap <tab><tab>oue<CR> 243t
xmap <tab><tab>ouu<CR> 244t
xmap <tab><tab>oui<CR> 245t
xmap <tab><tab>oud<CR> 246t
xmap <tab><tab>ouh<CR> 247t
xmap <tab><tab>out<CR> 248t
xmap <tab><tab>oun<CR> 249t

xmap <tab><tab>ois<CR> 250t
xmap <tab><tab>oia<CR> 251t
xmap <tab><tab>oio<CR> 252t
xmap <tab><tab>oie<CR> 253t
xmap <tab><tab>oiu<CR> 254t
xmap <tab><tab>oii<CR> 255t
xmap <tab><tab>oid<CR> 256t
xmap <tab><tab>oih<CR> 257t
xmap <tab><tab>oit<CR> 258t
xmap <tab><tab>oin<CR> 259t

xmap <tab><tab>ods<CR> 260t
xmap <tab><tab>oda<CR> 261t
xmap <tab><tab>odo<CR> 262t
xmap <tab><tab>ode<CR> 263t
xmap <tab><tab>odu<CR> 264t
xmap <tab><tab>odi<CR> 265t
xmap <tab><tab>odd<CR> 266t
xmap <tab><tab>odh<CR> 267t
xmap <tab><tab>odt<CR> 268t
xmap <tab><tab>odn<CR> 269t

xmap <tab><tab>ohs<CR> 270t
xmap <tab><tab>oha<CR> 271t
xmap <tab><tab>oho<CR> 272t
xmap <tab><tab>ohe<CR> 273t
xmap <tab><tab>ohu<CR> 274t
xmap <tab><tab>ohi<CR> 275t
xmap <tab><tab>ohd<CR> 276t
xmap <tab><tab>ohh<CR> 277t
xmap <tab><tab>oht<CR> 278t
xmap <tab><tab>ohn<CR> 279t

xmap <tab><tab>ots<CR> 280t
xmap <tab><tab>ota<CR> 281t
xmap <tab><tab>oto<CR> 282t
xmap <tab><tab>ote<CR> 283t
xmap <tab><tab>otu<CR> 284t
xmap <tab><tab>oti<CR> 285t
xmap <tab><tab>otd<CR> 286t
xmap <tab><tab>oth<CR> 287t
xmap <tab><tab>ott<CR> 288t
xmap <tab><tab>otn<CR> 289t

xmap <tab><tab>ons<CR> 290t
xmap <tab><tab>ona<CR> 291t
xmap <tab><tab>ono<CR> 292t
xmap <tab><tab>one<CR> 293t
xmap <tab><tab>onu<CR> 294t
xmap <tab><tab>oni<CR> 295t
xmap <tab><tab>ond<CR> 296t
xmap <tab><tab>onh<CR> 297t
xmap <tab><tab>ont<CR> 298t
xmap <tab><tab>onn<CR> 299t

