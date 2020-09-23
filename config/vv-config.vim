"You can change important config here. If you want to edit other config you
"can use :HConfig to open and change it.

""""""""""""""""""""""""""""""
" common settings
""""""""""""""""""""""""""""""
let mapleader=","
let g:tagsPath = $HOME."/.vim/tags"
let g:undoDirPath=$HOME."/.vim/undodir"
let g:vvimrc_name=".vvimrc"
let g:plugindir = expand('<sfile>:p:h:h')
execute ':source' g:plugindir."/config/vv-hconfig.vim"

""""""""""""""""""""""""""""""
" Tlist settings
""""""""""""""""""""""""""""""
let Tlist_WinWidth = 40
let Tlist_Exit_OnlyWindow = 1
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
let g:airline_theme = 'desertink'
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

    Plug 'mzlogin/vim-markdown-toc'
    "dont need do anything.
    "this plugin open your browser when you open a markdown file

    Plug 'dhruvasagar/vim-table-mode'
    "use <leader>tm open table mode
    "use | <text> | to create table unit.
    "use || to create |+++++++++|

    Plug 'vim-scripts/taglist.vim'
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

    Plug 'auxiliary/vim-layout'
    "dont need do anything.

    Plug 'kshenoy/vim-signature'
    "dont need do anything.

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    "dont need do anything.

    Plug 'yianwillis/vimcdoc'
    "vim chinese doc
    "dont need do anything.

    Plug 'vim-scripts/fcitx.vim'
    "dont need do anything.

    Plug 'godlygeek/tabular'
    "highlight

    Plug 'plasticboy/vim-markdown'
    "markdown highlight

    Plug 'suan/vim-instant-markdown'
    "dont need do anything.
    "this plugin will automatically open web browser when you editing markdown files.

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

    Plug 'gcmt/wildfire.vim'
    "<leader><space>
    "select a block
    "
    "<space>
    "select a block in visual mode
    "
    "<leader><space>
    "unselect a block in visual mode

    Plug 'sjl/gundo.vim'
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
    "FloatermNew
    "FloatermHide
    "FloatermNext
    "FloatermPrev
    "FloatermFirst
    "FloatermLast
    "FloatermShow
    "<leader><leader>h
    "<leader><leader>d

    Plug 'ryanoasis/vim-devicons'
    "dont need do anything.

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

    "Plug 'SirVer/ultisnips'

    Plug 'vim-scripts/lookupfile'

    Plug 'airblade/vim-gitgutter'

    Plug 'srstevenson/vim-picker'

    Plug 'chiel92/vim-autoformat'

    Plug 'honza/vim-snippets'

    Plug 'junegunn/vim-easy-align'

    Plug 'brooth/far.vim'

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

    Plug 'junegunn/fzf.vim'

    Plug 'brooth/far.vim'

    Plug 'vim-scripts/genutils'

    Plug 'Vssblt/vv-config.vim'

call plug#end()

""""""""""""""""""""""""""""""
" coc plugin settings
" 依赖 clangd
""""""""""""""""""""""""""""""
let g:coc_global_extensions = [
    \ 'coc-clangd',
    \ 'coc-html',
    \ 'coc-cmake',
    \ 'coc-vimlsp',
  \ ]

""""""""""""""""""""""""""""""
" other settings
""""""""""""""""""""""""""""""
execute ":colorscheme darkblue2"
