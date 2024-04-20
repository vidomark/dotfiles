TARGET_DIR="$HOME/fzf-git.sh"

if [ ! -d "$TARGET_DIR" ]; then
    echo "Cloning fzf-git.sh into $TARGET_DIR..."
    git clone https://github.com/junegunn/fzf-git.sh.git "$TARGET_DIR"
fi
