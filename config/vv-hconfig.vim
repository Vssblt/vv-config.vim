"This file is hiden config file. 
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
set clipboard=unnamedplus
set mouse=i
set t_Co=256

set undofile

if !isdirectory(g:undoDirPath)
    call mkdir(g:undoDirPath, "p")
endif

let &undodir=g:undoDirPath

imap <Tab> <C-P>

"You can use [Ctrl + x] to complate the code. 
filetype plugin indent on
set completeopt=longest,menu

" Highlight Class and Function names
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

"airline
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


"other
function! Load_vvimrc(path)
    let l:all_path = SplitPath(a:path)
    
    for p in l:all_path
        let l:current_vvimrc = p.'/'.g:vvimrc_name
	if p == '/'
        	let l:current_vvimrc = p.g:vvimrc_name
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


execute ":command! ConfigV :tabnew ~/.vim/config/vv-config.vim"
execute ":command! HConfigV :tabnew ~/.vim/config/vv-hconfig.vim"
execute ":command! DvorakSettingsV :tabnew ~/.vim/plugin/vv-layout-dvorak.vim"
execute ":command! QwertySettingsV :tabnew ~/.vim/plugin/vv-layout-qwerty.vim"
