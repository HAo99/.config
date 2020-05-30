[English Ver.](./README.md)

## 安装

### 第一步 安装 vim-plug

vim-plug 是一款轻量的 Vim 插件管理器，有两种方法可以进行安装：

[下载 plug.vim](https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim) 并将其放在 `autoload` 目录下

**或者**使用以下命令进行安装

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```



### 第二步 安装 node.js

可以使用官方脚本进行安装：

```bash
curl -sL install-node.now.sh/lts | bash
```

**或者**从[官方网站](https://nodejs.org)下载，自行安装

> coc.nvim 及其扩展需要使用 node.js 进行构建



### 第三步 安装 ctags

如果你是 Ubuntu 发行版的话，可以使用以下命令直接安装

```bash
snap install universal-ctags
```

> vista.vim 需要 ctags 获取到类、方法等成员



### 第四步 安装插件

运行 `nvim` ，进入后使用 `:PlugInstall` 进行安装本配置的插件



### 第五步 使用 `:checkhealth` 检查插件安装情况



## 使用方式

### 光标移动

| 快捷键 | 行为 |
| ------ | ---- |
| `H`      | 快速向右移动              |
| `J`      | 快速向下移动                 |
| `K`      | 快速向上移动                        |
| `L`      | 快速向右移动                        |
| `<c-a>`  | 移动到行首                          |
| `<c-e>` | Move to the last letter of the line  |



### 窗口切换

| 快捷键        | 行为                  |
| ------------- | --------------------- |
| `<SPACE>` `w` | Switch to next window |
| `<SPACE>` `h` | 切换到左边的窗口      |
| `<SPACE>` `j` | 切换到下边的窗口      |
| `<SPACE>` `k` | 切换到上边的窗口      |
| `<SPACE>` `l` | 切换到右边的窗口      |



### 窗口分割

| 快捷键  | 行为                                         |
| ------- | -------------------------------------------- |
| `s` `u` | 水平分割当前窗口，并将新窗口位于当前窗口上方 |
| `s` `e` | 水平分割当前窗口，并将新窗口位于当前窗口下方 |
| `s` `n` | 垂直分割当前窗口，并将新窗口位于当前窗口左方 |
| `s` `i` | 水平分割当前窗口，并将新窗口位于当前窗口右方 |



### 窗口控制大小

| 快捷键    | 行为               |
| --------- | ------------------ |
| `<UP>`    | 增加当前窗口到高度 |
| `<DOWN>`  | 减少当前窗口到高度 |
| `<LEFT>`  | 增加当前窗口到宽度 |
| `<RIGHT>` | 减少当前窗口到高度 |



### 代码编辑

| 快捷键  | 行为                           |
| ------- | ------------------------------ |
| `<TAB>` | 选择补全内容；`<CR>` 确认选择内容 （PS：`<CR>` 为回车键） |
| `<c-j>` | 展开代码片段；或移动至下一位置 |
| `<c-k>` | 移动到代码片段上一位置         |



### 其他

| 快捷键 | 行为 |
| ------ | ---- |
| `<SPACE>` `r` | 编译代码并运行 |
| `<SPACE>` `e` | 打开/关闭文件浏览器 |
| `<SPACE>` `t` | 打开/关闭 Tag 栏 |

