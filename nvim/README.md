## Install

### Step 1. Install vim-plug

vim-plug is a minimalist vim plugin manager.

There are 2 way to install vim-plug in linux.

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

### Step 3. Install Plugins

Run `nvim`, and use command `:PlugInstall` to install plugins defined in this config.


