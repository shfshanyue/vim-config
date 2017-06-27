# Vim config for shanyue

配置使用 `pathogen` 和 `git submodules` 进行插件管理，使用本配置文件可以使您快速上手vim。本配置文件对于前端友好，前端开发者可以使用 `emmet` 可以快速编写html和css，另外有 `jsx` 与 `pug`语法高亮，并且可以使用 `eslint` 进行语法检查。本人早期使用 [amix/vimrc](https://github.com/amix/vimrc) 进行开发，深入浅出，帮助很大，非常推荐。

欢迎 star！欢迎 pr！

## 配置

```
$ git clone git@github.com:shfshanyue/vim-config.git ~/.vim-config --recursive
$ cd ~/.vim-config
$ ln -s $(pwd)/.vimrc ~/.vimrc

$ git submodule update --remote
```

## 常用快捷键

+ `,w` 快速保存
+ `:W` 保存需要权限的文件
+ `gg` 快速移动到文件首
+ `G` 快速移动至文件尾
+ `dd` 剪切本行
+ `yy` 复制本行
+ `:12` 快速移动至特定行
+ `<c-o>` 移动至最近一次位置
+ `==i{` 自动缩进
+ `<c-p>` 自动补全
+ `<c-w-w>` 切换至最近一次窗口
+ `"*yy` 复制到系统剪切板
+ `*` 快速查找关键字，类似于sublime的 `Command + d`
+ `:noh` 取消关键字高亮
+ `:set nu` 显示行号
+ `:options` 显示配置

## 截屏
+ markdown 文件高亮与缩进

![vim-1](https://raw.githubusercontent.com/shfshanyue/vim-config/master/screenshots/vim-1.png)

+ solarized dark 模式

![vim-4](https://raw.githubusercontent.com/shfshanyue/vim-config/master/screenshots/vim-4.png)

+ [Goyo](https://github.com/junegunn/goyo.vim) 模式

![vim-2](https://raw.githubusercontent.com/shfshanyue/vim-config/master/screenshots/vim-2.png)

+ [ctrlp](https://github.com/kien/ctrlp.vim) 与 [nerdtree](https://github.com/scrooloose/nerdtree)

![vim-3](https://raw.githubusercontent.com/shfshanyue/vim-config/master/screenshots/vim-3.png)

+ git blame 效果图，插件 [vim-fugitive](https://github.com/tpope/vim-fugitive)

![vi-5](https://raw.githubusercontent.com/shfshanyue/vim-config/master/screenshots/vim-5.png)

## 插件

### [nerdtree](https://github.com/scrooloose/nerdtree)
> 文件管理器

+ `,nn` 切换文件管理器窗口，类似于sublime的 `Command + k + b`
+ `,nf` 定位当前文件的位置

在文件管理窗口

+ `ma` 新建文件或文件夹
+ `md` 删除文件或文件夹
+ `I` 切换隐藏文件显示状态

### [ctrlp.vim](https://github.com/kien/ctrlp.vim)
> ctrlp，类似于sublime的ctrlp

+ `<c-p>` 在当前项目下查找文件
+ `,b` 在buffer中查找文件
+ `,f` 在最近打开文件中查找

在ctrlp窗口中，`<c-j>` 和 `<c-k>` 控制上下移动。

### [ag.vim](https://github.com/rking/ag.vim)
> 查找关键字，类似于sublime的 `Command + Shift + f`

+ `Ag key *.js` 在特定文件下查找关键字

注：首先需要安装 [the_silver_searcher](https://github.com/ggreer/the_silver_searcher)

### [vim-commentary](https://github.com/tpope/vim-commentary)
> 注释命令

+ `:gcc` 注释当前行，类似于sublime的 `<c-/>`

### [vim-fugitive](https://github.com/tpope/vim-fugitive)
> git扩展

+ `:Gblame` 查看当前行的归属
+ `:Gdiff` 查看与工作区文件的差异
+ `:Gread` 相当于 `git checkout -- file`
+ `:Gwrite` 相当于 `git add file`

### [syntastic](https://github.com/vim-syntastic/syntastic)
> 语法检查插件，设置eslint

+ `:SyntasticCheck` 语法检查，默认会在保存时进行语法检查，不过会有卡顿
+ `:lne[xt]` 下一处语法错误
+ `:lp[revious]` 上一处语法错误
+ `:! eslint %:p --fix` 自动修正错误

### [emmet-vim](https://github.com/mattn/emmet-vim)
> emmet扩展

+ `<c-y>,` 类似于sublime的 `<c-e>`

### [delimitMate](https://github.com/Raimondi/delimitMate)
> 括号，引号自动补全

### [goyo](https://github.com/junegunn/goyo.vim)

+ `:Goyo` 切换至 gotyo 模式

### [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
> solarized 主题

可更改配置文件中 background 为 `dark` 和 `light` 切换主题

## 参考

+ [amix/vimrc](https://github.com/amix/vimrc)
