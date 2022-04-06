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

nnoremap - -
nnoremap + +

nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
xnoremap <silent> <leader>k :call InterestingWords('v')<cr>
nnoremap <silent> <leader>K :nohl<CR>:call UncolorAllWords()<cr>
nnoremap <silent> l :call WordNavigation(1)<cr>
nnoremap <silent> L :call WordNavigation(0)<cr>

nnoremap j 12<c-y>
nnoremap k 12<c-e>
xnoremap j 12<c-y>
xnoremap k 12<c-e>

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
nnoremap <leader>q :NERDTreeToggle<CR>
nnoremap <leader>j :GundoToggle<CR>

nmap . <Plug>(choosewin)
nnoremap > .
nnoremap < ,
xnoremap > .
xnoremap < ,

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
"nmap bna <Plug>(coc-diagnostic-next)
"nmap bpa <Plug>(coc-diagnostic-prev)

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

nmap <tab>asa<CR> 201n
nmap <tab>aso<CR> 202n
nmap <tab>ase<CR> 203n
nmap <tab>asu<CR> 204n
nmap <tab>asi<CR> 205n
nmap <tab>asd<CR> 206n
nmap <tab>ash<CR> 207n
nmap <tab>ast<CR> 208n
nmap <tab>asn<CR> 209n

nmap <tab>aas<CR> 210n
nmap <tab>aaa<CR> 211n
nmap <tab>aao<CR> 212n
nmap <tab>aae<CR> 213n
nmap <tab>aau<CR> 214n
nmap <tab>aai<CR> 215n
nmap <tab>aad<CR> 216n
nmap <tab>aah<CR> 217n
nmap <tab>aat<CR> 218n
nmap <tab>aan<CR> 219n

nmap <tab>aos<CR> 220n
nmap <tab>aoa<CR> 221n
nmap <tab>aoo<CR> 222n
nmap <tab>aoe<CR> 223n
nmap <tab>aou<CR> 224n
nmap <tab>aoi<CR> 225n
nmap <tab>aod<CR> 226n
nmap <tab>aoh<CR> 227n
nmap <tab>aot<CR> 228n
nmap <tab>aon<CR> 229n

nmap <tab>aes<CR> 230n
nmap <tab>aea<CR> 231n
nmap <tab>aeo<CR> 232n
nmap <tab>aee<CR> 233n
nmap <tab>aeu<CR> 234n
nmap <tab>aei<CR> 235n
nmap <tab>aed<CR> 236n
nmap <tab>aeh<CR> 237n
nmap <tab>aet<CR> 238n
nmap <tab>aen<CR> 139n

nmap <tab>aus<CR> 240n
nmap <tab>aua<CR> 241n
nmap <tab>auo<CR> 242n
nmap <tab>aue<CR> 243n
nmap <tab>auu<CR> 244n
nmap <tab>aui<CR> 245n
nmap <tab>aud<CR> 246n
nmap <tab>auh<CR> 247n
nmap <tab>aut<CR> 248n
nmap <tab>aun<CR> 249n

nmap <tab>ais<CR> 250n
nmap <tab>aia<CR> 251n
nmap <tab>aio<CR> 252n
nmap <tab>aie<CR> 253n
nmap <tab>aiu<CR> 254n
nmap <tab>aii<CR> 255n
nmap <tab>aid<CR> 256n
nmap <tab>aih<CR> 257n
nmap <tab>ait<CR> 258n
nmap <tab>ain<CR> 259n

nmap <tab>ads<CR> 260n
nmap <tab>ada<CR> 261n
nmap <tab>ado<CR> 262n
nmap <tab>ade<CR> 263n
nmap <tab>adu<CR> 264n
nmap <tab>adi<CR> 265n
nmap <tab>add<CR> 266n
nmap <tab>adh<CR> 267n
nmap <tab>adt<CR> 268n
nmap <tab>adn<CR> 269n

nmap <tab>ahs<CR> 270n
nmap <tab>aha<CR> 271n
nmap <tab>aho<CR> 272n
nmap <tab>ahe<CR> 273n
nmap <tab>ahu<CR> 274n
nmap <tab>ahi<CR> 275n
nmap <tab>ahd<CR> 276n
nmap <tab>ahh<CR> 277n
nmap <tab>aht<CR> 278n
nmap <tab>ahn<CR> 279n

nmap <tab>ats<CR> 280n
nmap <tab>ata<CR> 281n
nmap <tab>ato<CR> 282n
nmap <tab>ate<CR> 283n
nmap <tab>atu<CR> 284n
nmap <tab>ati<CR> 285n
nmap <tab>atd<CR> 286n
nmap <tab>ath<CR> 287n
nmap <tab>att<CR> 288n
nmap <tab>atn<CR> 289n

nmap <tab>ans<CR> 290n
nmap <tab>ana<CR> 291n
nmap <tab>ano<CR> 292n
nmap <tab>ane<CR> 293n
nmap <tab>anu<CR> 294n
nmap <tab>ani<CR> 295n
nmap <tab>and<CR> 296n
nmap <tab>anh<CR> 297n
nmap <tab>ant<CR> 298n
nmap <tab>ann<CR> 299n







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

nmap <tab><tab>asa<CR> 201t
nmap <tab><tab>aso<CR> 202t
nmap <tab><tab>ase<CR> 203t
nmap <tab><tab>asu<CR> 204t
nmap <tab><tab>asi<CR> 205t
nmap <tab><tab>asd<CR> 206t
nmap <tab><tab>ash<CR> 207t
nmap <tab><tab>ast<CR> 208t
nmap <tab><tab>asn<CR> 209t

nmap <tab><tab>aas<CR> 210t
nmap <tab><tab>aaa<CR> 211t
nmap <tab><tab>aao<CR> 212t
nmap <tab><tab>aae<CR> 213t
nmap <tab><tab>aau<CR> 214t
nmap <tab><tab>aai<CR> 215t
nmap <tab><tab>aad<CR> 216t
nmap <tab><tab>aah<CR> 217t
nmap <tab><tab>aat<CR> 218t
nmap <tab><tab>aan<CR> 219t

nmap <tab><tab>aos<CR> 220t
nmap <tab><tab>aoa<CR> 221t
nmap <tab><tab>aoo<CR> 222t
nmap <tab><tab>aoe<CR> 223t
nmap <tab><tab>aou<CR> 224t
nmap <tab><tab>aoi<CR> 225t
nmap <tab><tab>aod<CR> 226t
nmap <tab><tab>aoh<CR> 227t
nmap <tab><tab>aot<CR> 228t
nmap <tab><tab>aon<CR> 229t

nmap <tab><tab>aes<CR> 230t
nmap <tab><tab>aea<CR> 231t
nmap <tab><tab>aeo<CR> 232t
nmap <tab><tab>aee<CR> 233t
nmap <tab><tab>aeu<CR> 234t
nmap <tab><tab>aei<CR> 235t
nmap <tab><tab>aed<CR> 236t
nmap <tab><tab>aeh<CR> 237t
nmap <tab><tab>aet<CR> 238t
nmap <tab><tab>aen<CR> 139t

nmap <tab><tab>aus<CR> 240t
nmap <tab><tab>aua<CR> 241t
nmap <tab><tab>auo<CR> 242t
nmap <tab><tab>aue<CR> 243t
nmap <tab><tab>auu<CR> 244t
nmap <tab><tab>aui<CR> 245t
nmap <tab><tab>aud<CR> 246t
nmap <tab><tab>auh<CR> 247t
nmap <tab><tab>aut<CR> 248t
nmap <tab><tab>aun<CR> 249t

nmap <tab><tab>ais<CR> 250t
nmap <tab><tab>aia<CR> 251t
nmap <tab><tab>aio<CR> 252t
nmap <tab><tab>aie<CR> 253t
nmap <tab><tab>aiu<CR> 254t
nmap <tab><tab>aii<CR> 255t
nmap <tab><tab>aid<CR> 256t
nmap <tab><tab>aih<CR> 257t
nmap <tab><tab>ait<CR> 258t
nmap <tab><tab>ain<CR> 259t

nmap <tab><tab>ads<CR> 260t
nmap <tab><tab>ada<CR> 261t
nmap <tab><tab>ado<CR> 262t
nmap <tab><tab>ade<CR> 263t
nmap <tab><tab>adu<CR> 264t
nmap <tab><tab>adi<CR> 265t
nmap <tab><tab>add<CR> 266t
nmap <tab><tab>adh<CR> 267t
nmap <tab><tab>adt<CR> 268t
nmap <tab><tab>adn<CR> 269t

nmap <tab><tab>ahs<CR> 270t
nmap <tab><tab>aha<CR> 271t
nmap <tab><tab>aho<CR> 272t
nmap <tab><tab>ahe<CR> 273t
nmap <tab><tab>ahu<CR> 274t
nmap <tab><tab>ahi<CR> 275t
nmap <tab><tab>ahd<CR> 276t
nmap <tab><tab>ahh<CR> 277t
nmap <tab><tab>aht<CR> 278t
nmap <tab><tab>ahn<CR> 279t

nmap <tab><tab>ats<CR> 280t
nmap <tab><tab>ata<CR> 281t
nmap <tab><tab>ato<CR> 282t
nmap <tab><tab>ate<CR> 283t
nmap <tab><tab>atu<CR> 284t
nmap <tab><tab>ati<CR> 285t
nmap <tab><tab>atd<CR> 286t
nmap <tab><tab>ath<CR> 287t
nmap <tab><tab>att<CR> 288t
nmap <tab><tab>atn<CR> 289t

nmap <tab><tab>ans<CR> 290t
nmap <tab><tab>ana<CR> 291t
nmap <tab><tab>ano<CR> 292t
nmap <tab><tab>ane<CR> 293t
nmap <tab><tab>anu<CR> 294t
nmap <tab><tab>ani<CR> 295t
nmap <tab><tab>and<CR> 296t
nmap <tab><tab>anh<CR> 297t
nmap <tab><tab>ant<CR> 298t
nmap <tab><tab>ann<CR> 299t

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
nnoremap <leader>c :Continue<CR>
nnoremap <leader>r :Run<CR>

if &diff != 0
nnoremap dg :diffget<CR>
xnoremap dg :diffget<CR>
endif 
