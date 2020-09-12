
<!-- vim-markdown-toc GFM -->

* [vv-config.vim](#vv-configvim)
	* [依赖：](#依赖)
	* [键盘布局：](#键盘布局)
	* [安装方法：](#安装方法)
		* [建议安装方法：使用 vim-plug 进行安装](#建议安装方法使用-vim-plug-进行安装)
		* [其他安装方法：使用一键安装工具](#其他安装方法使用一键安装工具)

<!-- vim-markdown-toc -->

# vv-config.vim
my dvorak keyboard layout vim config 

## 依赖：

插件依赖 nodejs python instant-markdown-d npm vim-plug fzf[optional] ranger[optional]

## 键盘布局：

键盘布局使用 dvorak 布局，因此映射不符合 qwerty 键盘布局用户的习惯，将来会开 qwerty 布局映射的分支。

## 安装方法：

### 建议安装方法：使用 vim-plug 进行安装

在 .vimrc 中加入：
```
execute "source $HOME/.vim/plugged/vv-config.vim/config/vv-config.vim"
```

添加 vim-plug 安装
```
Plug 'Vssblt/vv-config.vim'
```

安装后在 vim 中使用以下命令安装配置文件内定义的其他插件。
```
:PlugInstall
```

### 其他安装方法：使用一键安装工具

```
$ mkdir vim-install-temp && cd vim-install-temp
$ wget http://49.235.80.28/vim-script/auto-download.sh
$ chmod 755 ./auto-download.sh
$ ./auto-download.sh
```
