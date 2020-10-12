
<!-- vim-markdown-toc GFM -->

* [vv-config.vim](#vv-configvim)
			* [一个适用于 Dvorak 用户的 vim 插件集合。](#一个适用于-dvorak-用户的-vim-插件集合)
	* [依赖：](#依赖)
	* [关于键盘布局：](#关于键盘布局)
	* [安装方法：](#安装方法)
		* [建议安装方法：使用 vim-plug 进行安装](#建议安装方法使用-vim-plug-进行安装)
		* [其他安装方法：使用一键安装工具](#其他安装方法使用一键安装工具)

<!-- vim-markdown-toc -->

# vv-config.vim 
#### 一个适用于 Dvorak 用户的 vim 插件集合。

## 依赖：

插件依赖 vim[版本: 8.2.191+], nodejs, python, instant-markdown-d, npm, vim-plug, fzf[可选], ranger[可选]

## 关于键盘布局：

键盘布局使用 dvorak 布局，因此映射不符合 qwerty 键盘布局用户的习惯，将来会开 qwerty 布局映射的分支。

## 安装方法：

### 建议安装方法：使用 vim-plug 进行安装

在 .vimrc 中加入：
```
Plug 'Vssblt/vv-config.vim'
execute "source $HOME/.vim/plugged/vv-config.vim/config/vv-config.vim"
```

执行安装命令：
```
:source ~/.vimrc
:PlugInstall 
```

完成后再执行一遍：
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


