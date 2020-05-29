## Installation

### Step 1. Install vim-plug

vim-plug is a minimalist vim plugin manager.

There are 2 way to install vim-plug in Linux.

[Download plug.vim](https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim) and put it in the "autoload" directory

**Or** Execute the following commands:

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### Step 2. Install node.js

Use the offical script to install:

```bash
curl -sL install-node.now.sh/lts | bash
```

**Or** download from [offical website](https://nodejs.org), and install by yourself.

### Step 3. Install ctags

If you are an Ubuntu distribution, use the following command: 

```bash
snap install universal-ctags
```

### Step 4. Install Plugins

Run `nvim`, and use command `:PlugInstall` to install plugins defined in this config.

### Step 5. `:checkhealth`

## Usage

### Cursor Movement

| Shortcut | Action                               |
| -------- | ------------------------------------ |
| `H`      | Fast move left                       |
| `J`      | Fast move down                       |
| `K`      | Fast move up                         |
| `L`      | Fast move right                      |
| `<c-a>`  | Move to the first letter of the line |
| `<c-e>`  | Move to the last letter of the line  |



### Windows Switch

| Shortcut      | Action                      |
| ------------- | --------------------------- |
| `<SPACE>` `w` | Switch to next window       |
| `<SPACE>` `h` | Switch to the left window   |
| `<SPACE>` `j` | Switch to the bottom window |
| `<SPACE>` `k` | Switch to the top window    |
| `<SPACE>` `l` | Switch to the right window  |



### Windows Split

| Shortcut | Action                                                       |
| -------- | ------------------------------------------------------------ |
| `s` `u`  | Create a new horizontal split screen and place it above the current window |
| `s` `e`  | Create a new horizontal split screen and place it below the current window |
| `s` `n`  | Create a new vertical split screen and place it left to the current window |
| `s` `i`  | Create a new vertical split screen and place it right to the current window |



### Windows Resize

| Shortcut  | Action                         |
| --------- | ------------------------------ |
| `<UP>`    | Increase current window height |
| `<DOWN>`  | Decrease current window height |
| `<LEFT>`  | Increase current window width  |
| `<RIGHT>` | Decrease current window width  |



### Code Editing

| Shortcut | Action                                 |
| -------- | -------------------------------------- |
| `<TAB>`  | Confirm completion                     |
| `<c-j>`  | Snippet expand or Snippet jump forward |
| `<c-k>`  | Snippet jump backward                  |



### Others

| Shortcut      | Action               |
| ------------- | -------------------- |
| `<SPACE>` `r` | Compile Code and Run |
| `<SPACE>` `e` | Toggle file explorer |
| `<SPACE>` `t` | Toggle tag bar       |

