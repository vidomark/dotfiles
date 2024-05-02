TARGET_DIR="$HOME/.oh-my-zsh/"

if [ ! -d "$TARGET_DIR" ]; then
    echo "Downloading oh-my-zsh into $TARGET_DIR..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
