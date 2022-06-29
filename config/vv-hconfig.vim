""""""""""""""""""""""""""""""
"This file is hiden config file. 
""""""""""""""""""""""""""""""
set lazyredraw
set wildmenu
set laststatus=3
set showtabline=2
set nu
set relativenumber
set encoding=utf8
set fileencodings=ucs-bom,utf8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set hlsearch 
"set incsearch
set showmatch 
set ignorecase
set viminfo='20,\"50000
set timeoutlen=10000
set ttimeoutlen=10
set updatetime=0
set clipboard^=unnamed,unnamedplus
set mouse=v
set t_Co=256
set fillchars=stl:\ 
set backspace=indent,eol,start
"set foldcolumn=1
set signcolumn=number
set numberwidth=1
set scrolloff=6
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set softtabstop=0
set hidden
set synmaxcol=180    " Normally, the column count will not overtake 180.
set matchpairs+=
let g:localvimrc_ask=0
"let g:localvimrc_persistent=2
let g:localvimrc_sandbox=0

set undofile
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && &buftype == "quickfix"|q|endif
aug END

au BufEnter * call execute("setlocal winbar=" . expand('%:t'))

let g:last_buffer = []

"if !isdirectory(g:undoDirPath)
"    call mkdir(g:undoDirPath, "p")
"endif
"
"let &undodir=g:undoDirPath
"
"You can use [Ctrl + x] to complate the code. 
filetype plugin indent on
set completeopt=longest,menu

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
"packadd termdebug
"autocmd filetype cpp nnoremap <F5> :Termdebug<CR> <c-w>2j<c-w>L

""""""""""""""""""""""""""""""
" vim-interestingwords settings
""""""""""""""""""""""""""""""
let g:interestingWordsDefaultMappings = 0
let g:interestingWordsRandomiseColors = 1
let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222', '1', '2', '3', '4', '6', '64', '99']

""""""""""""""""""""""""""""""
" ranger settings
""""""""""""""""""""""""""""""
let g:ranger_map_keys = 0

""""""""""""""""""""""""""""""
" vim-devicons settings
""""""""""""""""""""""""""""""`
"adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1

"adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1

"set highlight cached
let g:airline_highlighting_cache = 1


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
let g:airline_powerline_fonts=1
let g:airline_symbols.linenr = "CL" " current line
let g:airline_symbols.whitespace = '|'
let g:airline_symbols.maxlinenr = 'Ml' "maxline
let g:airline_symbols.branch = 'BR'
let g:airline_symbols.readonly = "RO"
let g:airline_symbols.dirty = "DT"
let g:airline_symbols.crypt = "CR"
"let g:airline_extensions = []

""""""""""""""""""""""""""""""
" coc settings
""""""""""""""""""""""""""""""
"autocmd CursorHold * silent call CocActionAsync('highlight')


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


execute ":command! VConfig :e " g:plugindir.'/config/vv-config.vim'
execute ":command! VHConfig :e " g:plugindir.'/config/vv-hconfig.vim'
execute ":command! VPlugList :e " '~/.config/nvim/init.lua'
execute ":command! VTConfig :e " g:plugindir.'/config/temp_config.vim'
execute ":command! DvorakSettingsV :e " g:plugindir.'/plugin/vv-layout-dvorak.vim'
execute ":command! QwertySettingsV :e " g:plugindir.'/plugin/vv-layout-qwerty.vim'
execute "command! Bda :bufdo bwipeout"

command! -nargs=0 FHide FloatermHide
command! -nargs=0 FNext FloatermNext
command! -nargs=0 FFirst FloatermFirst
command! -nargs=0 FKill FloatermKill
command! -nargs=0 FLast FloatermLast
command! -nargs=0 FPrev FloatermPrev
command! -nargs=0 FShow FloatermShow

if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
"  set signcolumn=number
else
"  set signcolumn=yes
endif

""""""""""""""""""""""""""""""
" vim-surround
""""""""""""""""""""""""""""""
let g:surround_no_mappings = 1

""""""""""""""""""""""""""""""
" vim-dispatch
""""""""""""""""""""""""""""""
let g:dispatch_quickfix_height=20
let g:dispatch_tmux_height=20


""""""""""""""""""""""""""""""
" LookupFile
""""""""""""""""""""""""""""""
let g:LookupFile_MinPatLength = 2
let g:LookupFile_PreservePatternHistory = 1
let g:LookupFile_AlwaysAcceptFirst = 1
let g:LookupFile_PreserveLastPattern = 0


""""""""""""""""""""""""""""""
" orther
""""""""""""""""""""""""""""""
if filereadable(g:plugindir."/config/temp_config.vim")
    execute ':source' g:plugindir."/config/temp_config.vim"
endif

""""""""""""""""""""""""""""""
" vim-glaive settings
""""""""""""""""""""""""""""""
let g:myplugin_enablefeature = 1
let g:myplugin_defaultdir = $HOME
let g:myplugin_weirdmode = 'm'

""""""""""""""""""""""""""""""
" fzf.vim settings
""""""""""""""""""""""""""""""
let g:fzf_preview_window = ['up:80%:hidden', 'ctrl-/']
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.75 } } 
let g:clockn_enable = 1
let g:clockn_color = '#000000'
let g:clockn_winblend = 100
highlight ClockNormal guifg=#000000
let g:clockn_to_top = 1
let g:clockn_to_right = 1


""""""""""""""""""""""""""""""
" coc-explorer settings
""""""""""""""""""""""""""""""
let g:coc_explorer_global_presets = {
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'tab:$': {
\     'position': 'tab:$',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 40,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 40,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   },
\   'buffer': {
\     'sources': [{'name': 'buffer', 'expand': v:true}]
\   },
\   'right': {
\     'position': 'right',
\     'width': 40,
\   },
\   'left': {
\     'position': 'left',
\     'width': 40,
\   },
\   'top': {
\     'position': 'top',
\     'height': 40,
\   },
\   'bottom': {
\     'position': 'bottom',
\     'height': 40,
\   },
\   'current_window': {
\     'position': 'current_window',
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]',
\     'width' : 40,
\     'height' : 40
\   },
\ }


""""""""""""""""""""""""""""""
" quick-scope settings
""""""""""""""""""""""""""""""
augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
augroup END
let g:qs_hi_priority = 2
let g:qs_max_chars=160
let g:qs_delay = 40

""""""""""""""""""""""""""""""
" common settings
""""""""""""""""""""""""""""""
autocmd VimEnter * :highlight EndOfBuffer ctermfg=bg


let g:fcitx5_remote='/usr/bin/fcitx5-remote'
let g:termdebug_useFloatingHover=1


""""""""""""""""""""""""""""""
" vim-lsp-cxx-highlight
""""""""""""""""""""""""""""""
au BufEnter * call HightlightCheck()
function HightlightCheck()
  if (line('$') > 2000)
    execute('LspCxxHighlightDisable')
  else
    execute('LspCxxHighlight')
  endif
endfunction
