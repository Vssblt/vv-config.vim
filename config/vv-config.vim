"You can change important config here. If you want to edit other config you
"can use :HConfig to open and change it.

""""""""""""""""""""""""""""""
" common settings
""""""""""""""""""""""""""""""
let mapleader=',' 
let g:VM_leader='.'
let g:plugindir = expand('<sfile>:p:h:h')
let g:tagsPath = g:plugindir."/tags"
"let g:undoDirPath= g:plugindir."/undodir"
let g:vvimrc_name=".vvimrc"
let g:with_x11 = 0
set tabstop=2
set sw=2
execute ':source' g:plugindir."/config/vv-hconfig.vim"

""""""""""""""""""""""""""""""
" Tlist settings
""""""""""""""""""""""""""""""
let Tlist_WinWidth = 40
let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
let Tlist_Show_Menu = 1
let Tlist_Auto_Open = 0
let g:TagList_showNum = 0
let g:TagList_showRelativeNumber = 0

""""""""""""""""""""""""""""""
" EasyMotion settings
""""""""""""""""""""""""""""""
let g:EasyMotion_keys = "aoeuidhtns',.pyfgcrl;qjkxbmwvz" "This is used for dvorak keyboard layout, you can change this option if you'r using qwerty layout.
let g:EasyMotion_smartcase = 1

""""""""""""""""""""""""""""""
" choosewin settings
""""""""""""""""""""""""""""""
let g:choosewin_overlay_enable = 0
let g:choosewin_label = "aoeuidhtns"

""""""""""""""""""""""""""""""
" airline settings
""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme = 'angr'
let g:airline#extensions#keymap#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1

""""""""""""""""""""""""""""""
" vim-floaterm settings
""""""""""""""""""""""""""""""
let g:floaterm_autoclose = 1
let g:floaterm_height = 0.9
let g:floaterm_width = 0.9

execute ':source' g:plugindir."/config/vim-plug-list.vim"


""""""""""""""""""""""""""""""
" vim-floaterm settings
""""""""""""""""""""""""""""""
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }

""""""""""""""""""""""""""""""
" coc plugin settings
" 依赖 clangd
""""""""""""""""""""""""""""""
let g:coc_global_extensions = [
    \ 'coc-clangd',
    \ 'coc-cmake',
    \ 'coc-vimlsp',
    \ 'coc-highlight',
    \ 'coc-html',
    \ 'coc-yank',
    \ 'coc-explorer', 
  \ ]

""""""""""""""""""""""""""""""
" other settings
""""""""""""""""""""""""""""""
execute ":colorscheme sonokai"
highlight LineNr term=bold cterm=NONE ctermfg=darkgray ctermbg=NONE gui=NONE guifg=darkgray guibg=NONE
highlight FloatermBorder ctermfg=green cterm=bold

""""""""""""""""""""""""""""""
" vim-glaive settings
""""""""""""""""""""""""""""""
call glaive#Install()
Glaive codefmt clang_format_executable='clang-format'
Glaive codefmt google_java_executable="java -jar /opt/google-java-format/google-java-format-1.10.0-all-deps.jar"

""""""""""""""""""""""""""""""
" vim-codefmt settings
""""""""""""""""""""""""""""""
augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
  autocmd FileType rust AutoFormatBuffer rustfmt
  autocmd FileType vue AutoFormatBuffer prettier
augroup END

let g:termdebug_wide = 160
let g:termdebug_disasm_window = 0
let g:termdebug_new_tab = 1

""""""""""""""""""""""""""""""
" vim-indent-rainbow settings
""""""""""""""""""""""""""""""
let g:rainbow_colors_black = [236, 235] 
call rainbow#enable()


""""""""""""""""""""""""""""""
" vim-doge
""""""""""""""""""""""""""""""
let g:doge_mapping='gc'
let g:doge_mapping_comment_jump_forward='<c-n>'
let g:doge_mapping_comment_jump_backward='<c-t>'
let g:doge_doc_standard_cpp='doxygen_javadoc'
