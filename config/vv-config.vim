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
" vim inspector settings
""""""""""""""""""""""""""""""
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'

""""""""""""""""""""""""""""""
" Tlist settings
""""""""""""""""""""""""""""""
let Tlist_WinWidth = 40
let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 0
let Tlist_Show_Menu = 1
let Tlist_Auto_Open = 0

""""""""""""""""""""""""""""""
" EasyMotion settings
""""""""""""""""""""""""""""""
let g:EasyMotion_keys = "aoeuidhtnscr" "This is used for dvorak keyboard layout, you can change this option if you'r using qwerty layout.
let g:EasyMotion_smartcase = 1

""""""""""""""""""""""""""""""
" choosewin settings
""""""""""""""""""""""""""""""
let g:choosewin_overlay_enable = 1
let g:choosewin_label = "aoeuidhtns"

""""""""""""""""""""""""""""""
" airline settings
""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme = 'papercolor'
let g:airline#extensions#keymap#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1

""""""""""""""""""""""""""""""
" gcmt/wildfire.vim settings
""""""""""""""""""""""""""""""
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]

""""""""""""""""""""""""""""""
" vim-floaterm settings
""""""""""""""""""""""""""""""
let g:floaterm_autoclose = 1
let g:floaterm_height = 0.9
let g:floaterm_width = 0.9

execute ':source' g:plugindir."/config/vim-plug-list.vim"

""""""""""""""""""""""""""""""
" coc plugin settings
" 依赖 clangd
""""""""""""""""""""""""""""""
let g:coc_global_extensions = [
    \ 'coc-clangd',
    \ 'coc-cmake',
    \ 'coc-vimlsp',
    \ 'coc-highlight', 
    \ 'coc-html'
  \ ]

    "\ 'coc-html',
""""""""""""""""""""""""""""""
" other settings
""""""""""""""""""""""""""""""
execute ":colorscheme darkblue2"

""""""""""""""""""""""""""""""
" vim-glaive settings
""""""""""""""""""""""""""""""
call glaive#Install()
Glaive codefmt clang_format_executable='clang-format-11'
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

