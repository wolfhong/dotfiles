### Usage

Rename this coderepo into `.vim`.
Then open vim and run `:PlugInstall` to install all plugins using `autoload/plug.vim`.

### 问题

TODO: pyflakes-pathogen 在windows-10上的cmder上不生效

### 使用插件说明

* autoload/pathogen: [插件管理](https://github.com/tpope/vim-pathogen)

* fugitive: 对于git的包装
* git: syntax, indent, and filetype plugin files for git
* nerdtree: 目录
* rainbow: 多层嵌套的大括号小括号使用颜色区分
* snipmate: 语法自动补全,根据文件后缀名进行不同语言的识别
* supertab: 按下`<Tab>`会自动帮忙补全
* tasklist: 

* pydoc: 查看Python库的文档: `:Pydoc <库名>`
* pep8: python codestyle
* pyflakes-pathogen: not work on windows-10
* py.test: pytest测试

### 未使用插件说明

* surround: cs命令可以全局替换标签/双引号等对应的符号
* minibufexpl: 一个界面上有多标签，跟tabedit功能重复了
* makegreen: test for ruby
* ack:
* command-t: **requires ruby**
* gundo: **requires y2.4+**
* ropevim: **requires py2.7**, python语法提示
