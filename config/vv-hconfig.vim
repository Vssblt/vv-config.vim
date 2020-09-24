""""""""""""""""""""""""""""""
"This file is hiden config file. 
""""""""""""""""""""""""""""""
set wildmenu
set laststatus=2
set showtabline=2
set nu
set encoding=utf8
set fileencodings=ucs-bom,utf8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set hlsearch 
set incsearch
set showmatch 
set ignorecase
set viminfo='20,\"50000
set timeoutlen=1000
set ttimeoutlen=10
set updatetime=0
"set clipboard=unnamedplus
set clipboard=unnamed
set mouse=i
set t_Co=256

set undofile

if !isdirectory(g:undoDirPath)
    call mkdir(g:undoDirPath, "p")
endif

let &undodir=g:undoDirPath

"imap <Tab> <C-P>

"You can use [Ctrl + x] to complate the code. 
filetype plugin indent on
set completeopt=longest,menu


""""""""""""""""""""""""""""""
" NERDTree settings
""""""""""""""""""""""""""""""
let NERDTreeMapOpenInTab='<leader>s'
let NERDTreeMapOpenInTabSilent='<leader>S'
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.swp']
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let NERDTreeMinimalUI = 1


""""""""""""""""""""""""""""""
" ranger settings
""""""""""""""""""""""""""""""
let g:ranger_map_keys = 0
"let g:ranger_replace_netrw = 1


""""""""""""""""""""""""""""""
" vim-nerdtree-syntax-highlight settings
""""""""""""""""""""""""""""""
"Highlight full name (not only icons). You need to add this if you don't have vim-devicons and want highlight.
"let g:NERDTreeHijackNetrw = 0
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

"Highlight full name (not only icons). You need to add this if you don't have vim-devicons and want highlight.
let g:NERDTreeHighlightFolders = 1

"highlights the folder name
let g:NERDTreeHighlightFoldersFullName = 1

"you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:Turquoise = "40E0D0"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = "FE405F"
let s:git_orange = "F54D27"
let s:gray = "808A87"

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['o'] = s:gray " sets the color of o files to blue
let g:NERDTreeExtensionHighlightColor['h'] = s:blue " sets the color of h files to blue
let g:NERDTreeExtensionHighlightColor['c'] = s:green " sets the color of c files to blue
let g:NERDTreeExtensionHighlightColor['cpp'] = s:green " sets the color of cpp files to blue
let g:NERDTreeExtensionHighlightColor['c++'] = s:green " sets the color of c++ files to blue


""""""""""""""""""""""""""""""
" Highlight Class and Function names
""""""""""""""""""""""""""""""
syn match cCustomParen "(" contains=cParen,cCppParen
syn match cCustomScope "::"
syn match cCustomClass "\w\+\s*::" contains=cCustomScope
syn match cCustomFunc "\w\+\s*(" contains=cCustomParen
syn match cCustomSymbol "[\{\}\(\)\[\]]"
syn match cCustomCalcu "[&+\-*/=<>]"
syn match cCustomComment "//[[:print:][:tab:]]*$" "contains=ctesttest
syn match cCustomComment2 "/*[[:print:][:tab:]]{-}*/" "contains=ctesttest
syn match cCustomComment3 "/*_[[:print:][:tab:]]{-}*/" "contains=ctesttest

hi cCustomSymbol gui=NONE cterm=bold ctermfg=yellow
hi cCustomCalcu gui=NONE cterm=bold ctermfg=yellow
hi cCustomClass gui=NONE cterm=bold ctermfg=78
hi cCustomFunc gui=NONE cterm=bold ctermfg=196 "9
hi cCustomComment gui=NONE cterm=bold ctermfg=73 "154
hi cCustomComment2 gui=NONE cterm=bold ctermfg=73 "154
hi cCustomComment3 gui=NONE cterm=bold ctermfg=73 "154


""""""""""""""""""""""""""""""
" vim-devicons settings
""""""""""""""""""""""""""""""`
"Can be enabled or disabled
let g:webdevicons_enable_nerdtree = 1

"whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 1

"adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1

"adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1


""""""""""""""""""""""""""""""
" airline settings
""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#buffer_idx_format = {
       \ '0': '0 ',
       \ '1': '1 ',
       \ '2': '2 ',
       \ '3': '3 ',
       \ '4': '4 ',
       \ '5': '5 ',
       \ '6': '6 ',
       \ '7': '7 ',
       \ '8': '8 ',
       \ '9': '9 '
       \}
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = "CL" " current line
let g:airline_symbols.whitespace = '|'
let g:airline_symbols.maxlinenr = 'Ml' "maxline
let g:airline_symbols.branch = 'BR'
let g:airline_symbols.readonly = "RO"
let g:airline_symbols.dirty = "DT"
let g:airline_symbols.crypt = "CR"

""""""""""""""""""""""""""""""
" coc settings
""""""""""""""""""""""""""""""
autocmd CursorHold * silent call CocActionAsync('highlight')


""""""""""""""""""""""""""""""
" other settings
""""""""""""""""""""""""""""""
function! Load_vvimrc(path)
    let l:all_path = SplitPath(a:path)
    
    for p in l:all_path
        let l:current_vvimrc = p.'/'.g:vvimrc_name
	if p == '/'
        	let l:current_vvimrc = p.g:vvimrc_name
	endif
        if filereadable(l:current_vvimrc) 
            execute 'source' l:current_vvimrc
            echo l:current_vvimrc." add"
        endif
    endfor
    
endfunction

function! SplitPath(path)
    let l:start = 0
    let l:list = []
    
    while 1 == 1
        let l:idx = stridx(a:path, '/', l:start)
        let l:start = l:idx + 1
        
        if l:idx == -1
            break
        endif
        
        let l:part = a:path[0:(l:idx > 0 ? l:idx - 1 : l:idx)]
        call add(l:list, l:part)
    endwhile
    
    if strridx(a:path, '/') != strlen(a:path) - strlen('/')
        call add(l:list, a:path)
    endif
    
    return l:list
endfunction

call Load_vvimrc(expand("%:p:h"))


execute ":command! ConfigV :tabnew" g:plugindir.'/config/vv-config.vim'
execute ":command! HConfigV :tabnew" g:plugindir.'/config/vv-hconfig.vim'
execute ":command! DvorakSettingsV :tabnew" g:plugindir.'/plugin/vv-layout-dvorak.vim'
execute ":command! QwertySettingsV :tabnew" g:plugindir.'/plugin/vv-layout-qwerty.vim'
execute ":command! FHide :FloatermHide"
execute ":command! FNext :FloatermNext"
execute ":command! FFirst :FloatermFirst"
execute ":command! FKill :FloatermKill"
execute ":command! FLast :FloatermLast"
execute ":command! FPrev :FloatermPrev"
execute ":command! FShow :FloatermShow"

if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

