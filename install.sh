#!/bin/bash

echo "🧹 Installing portable Vim configuration..."

# Step 1: 下载 .vimrc 到 $HOME
curl -fsSL https://raw.githubusercontent.com/kuang22/vimrc-portable/master/.vimrc -o ~/.vimrc
echo "✅ .vimrc downloaded to ~/.vimrc"

# Step 2: 安装 vim-plug 插件管理器
PLUG_VIM=~/.vim/autoload/plug.vim
if [ ! -f "$PLUG_VIM" ]; then
  echo "⬇️  Installing vim-plug..."
  curl -fLo "$PLUG_VIM" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  echo "✅ vim-plug installed."
else
  echo "ℹ️  vim-plug already exists. Skipping."
fi

# Step 3: 安装插件（静默安装）
echo "🔧 Installing plugins via PlugInstall..."
vim +'PlugInstall --sync' +qa

echo "🎉 Done! You can now use Vim with your portable config."
