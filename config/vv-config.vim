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
let g:floaterm_widget = 0.9

""""""""""""""""""""""""""""""
" vim-plug settings
" 需要安装环境 python, npm, node-js, instant-markdown-d
""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

    Plug 'Vssblt/vv-config.vim'

    "****************************************************************************************************************************************************************************************************
    "Those plugins take effect automatically.
    "
    Plug 'ryanoasis/vim-devicons'

    "Plug 'auxiliary/vim-layout'

    Plug 'kshenoy/vim-signature'

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'yianwillis/vimcdoc'
    "vim chinese doc

    Plug 'vim-scripts/fcitx.vim'
    
    Plug 'plasticboy/vim-markdown'
    "markdown highlight

    Plug 'suan/vim-instant-markdown'
    "this plugin will automatically open web browser when you editing markdown files.

    Plug 'Vssblt/vim-cpp'
    "cpp syntax

    Plug 'mzlogin/vim-markdown-toc'  
    "this plugin open your browser when you open a markdown file

    "****************************************************************************************************************************************************************************************************
    Plug 'lfv89/vim-interestingwords'

    Plug 'Vssblt/leetcode.vim'
    ":LeetCodeList
    "Open Leetcode index
    "
    ":LeetCodeTest
    "Test the code
    "
    ":LeetCodeReset
    "Reset code
    "
    ":LeetCodeSignIn
    "Sign in leetcode
    "
    ":LeetCodeSubmit
    "Submit the code

    Plug 'preservim/nerdcommenter'
    "[count]<leader>cc |NERDCommenterComment|
    "Comment out the current line or text selected in visual mode.
    "
    "[count]<leader>cn |NERDCommenterNested|
    "Same as cc but forces nesting.
    "
    "[count]<leader>c<space> |NERDCommenterToggle|
    "Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.
    "
    "[count]<leader>cm |NERDCommenterMinimal|
    "Comments the given lines using only one set of multipart delimiters.
    "
    "[count]<leader>ci |NERDCommenterInvert|
    "Toggles the comment state of the selected line(s) individually.
    "
    "[count]<leader>cs |NERDCommenterSexy|
    "Comments out the selected lines with a pretty block formatted layout.
    "
    "[count]<leader>cy |NERDCommenterYank|
    "Same as cc except that the commented line(s) are yanked first.
    "
    "<leader>c$ |NERDCommenterToEOL|
    "Comments the current line from the cursor to the end of line.
    "
    "<leader>cA |NERDCommenterAppend|
    "Adds comment delimiters to the end of line and goes into insert mode between them.
    "
    "|NERDCommenterInsert|
    "Adds comment delimiters at the current cursor position and inserts between. Disabled by default.
    "
    "<leader>ca |NERDCommenterAltDelims|
    "Switches to the alternative set of delimiters.
    "
    "[count]<leader>cl |NERDCommenterAlignLeft [count]<leader>cb |NERDCommenterAlignBoth
    "Same as |NERDCommenterComment| except that the delimiters are aligned down the left side (<leader>cl) or both sides (<leader>cb).
    "
    "[count]<leader>cu |NERDCommenterUncomment|
    "Uncomments the selected line(s).

    Plug 'dhruvasagar/vim-table-mode'
    "use <leader>tm open table mode
    "use | <text> | to create table unit.
    "use || to create |+++++++++|

    Plug 'Vssblt/taglist.vim'
    "type <leader>; to open taglist window.

    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    ":NERDTreeToggle

    Plug 'easymotion/vim-easymotion'
    "<leader>.
    "search one chara
    "
    "<leader><leader>.
    "search a string
    "
    "<leader>d
    "go start in current line
    "
    "<leader>-
    "go end in current line
    "
    "<leader>h/t/n/s
    "go somewhere

    Plug 't9md/vim-choosewin'
    "type . to switch window

    Plug 'Vssblt/a.vim'
    ":A
    "go .h or .cpp
    "
    ":AS
    "A and spilt
    "
    ":AV
    "A and vspilt
    "
    ":AT
    "A and new tab
    "
    ":IH
    "current cursor header
    "
    ":IHS
    "current cursor header and spilt
    "
    ":IHV
    "current cursor header and vspilt
    "
    ":IHT
    "current cursor header and open in new tab

    Plug 'mg979/vim-visual-multi'
    "ctrl + n
    "select current word and create a cursor
    "
    "ctrl + v and ctrl + n
    "select a text and create a cursor
    "
    "n  和  N
    "select next/prev text and create a cursor
    "
    "[  和  ]
    "select next/prev
    "
    "q
    "skip current text and select next text
    "
    "Q
    "delete current cursor

    "Plug 'sjl/gundo.vim'
    "<leader>c
    "open undolist

    Plug 'yssl/QFEnter'
    "if in quickfix window:
    "<Enter>, <2-LeftMouse>
    "open
    "
    "<Leader><Enter>
    "split and open in left window
    "
    "<Leader><Space>
    "split and open in top window
    "
    "<Leader><Tab>
    "open in new tab

    Plug 'voldikss/vim-floaterm'
    ":FloatermNew
    "<leader><leader>n
    "open a new floaterm popup window
    "
    ":FloatermHide        rename: FHide
    "<leader><leader>h
    "hide floaterm popup windows
    "
    ":FloatermNext        rename: FNext
    "show next floaterm window
    "
    ":FloatermPrev        rename: FPrev
    "show prev floaterm window
    "
    ":FloatermFirst       rename: FFirst
    "show first floaterm window
    "
    ":FloatermLast        rename: FLast
    "show last floaterm window
    "
    ":FloatermShow        rename: FShow
    "show current floaterm window
    "
    "<C-D>
    "close current floaterm window

    Plug 'flazz/vim-colorschemes'
    ":colorscheme [color theme]

    Plug 'francoiscabrol/ranger.vim'
    "<leader>o
    "open a file in new tab.

   Plug 'neoclide/coc.nvim', {'branch' : 'release'}
   ":CocInstall
   "install coc plugin
   "
   ":CocConfig
   "config coc plugin
   "
   ":CocCommand
   "run coc command
   "
   ":CocDisable/CocEnable
   "disable or enable coc plugin
   "
   ":CocUpdate
   "update coc plugin
   "
   
   Plug 'jackguo380/vim-lsp-cxx-highlight'

    Plug 'voldikss/vim-translator'
    ":Translate/TranslateX/TranslateW/TranslateH/TranslateL/TranslateR
    
    Plug 'wellle/targets.vim'
    "Targets.vim is a Vim plugin that adds various text objects to give 
    "you more targets to operate on. It expands on the idea of simple 
    "commands like di' (delete inside the single quotes around the cursor) 
    "to give you more opportunities to craft powerful commands that can 
    "be repeated reliably. One major goal is to handle all corner cases 
    "correctly.
    "
    "[ydc]i[",[]{}().<>']
    "copy, delete or change text between the characters.
    
    Plug 'vim-scripts/lookupfile'
    "   :LookupFile      Lookup files from tag files. This is a like a fast GNU
    "                    find on name. It can lookup files from any Vim
    "                    compatible tag file (which includes those from ctags),
    "                    but at the moment it is advisable to generate
    "                    specialized tag files using :find command (see
    "                    |lookupfile-tags|).
    "   :LUPath          Lookup files from 'path' using |globpath()|. The :find
    "                    command while being able to lookup files from 'path', it
    "                    doesn't provide any completion mechanism, and it is
    "                    clumsy when there are multiple files with the same name.
    "                    The :find command doesn't even accept a pattern.
    "   :LUBufs          Lookup loaded files (buffers) using |bufname()|. This is
    "                    a great addition to whatever buffer-explorer you are
    "                    using. When there are too many buffers open, this
    "                    sometimes makes it easy to find the right buffer, by
    "                    typing part of its name.
    "   :LUWalk          Lookup files using |glob()|. This works like the Emacs
    "                    ido.el, allowing you to walk up and down a path looking
    "                    for files. If you use the filename completion with :edit
    "                    command, then you will find this a lot more convenient
    "                    and faster to use.
    "   :LUArgs          Lookup files from |:args| list.

    "****************************************************************************************************************************************************************************************************
    "Other pluins.

    Plug 'airblade/vim-gitgutter'

    Plug 'srstevenson/vim-picker'

    Plug 'google/vim-maktaba'

    Plug 'google/vim-codefmt'

    Plug 'artoj/qmake-syntax-vim'

    Plug 'google/vim-glaive'

    Plug 'honza/vim-snippets'
    "custom auto complete.

    Plug 'junegunn/vim-easy-align'

    Plug 'brooth/far.vim'

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

    Plug 'junegunn/fzf.vim'

    Plug 'brooth/far.vim'

    Plug 'vim-scripts/genutils'

    Plug 'godlygeek/tabular'
    "highlight
 
    Plug 'tpope/vim-dispatch'

    Plug 'Vssblt/vim-linemovement'

    Plug 'puremourning/vimspector'

    Plug 'tpope/vim-surround'
    "

    "Plug 'SirVer/ultisnips'

call plug#end()

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

