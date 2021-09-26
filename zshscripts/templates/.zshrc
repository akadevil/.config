echo "Injecting constants..."
source ~/.config/zshscripts/.constants
echo "Injecting functions..."
source ~/.config/zshscripts/.functions
printg "Setup aliases..."
source ~/.config/zshscripts/.aliases
printg "Executing zplug libs and plugins..."
source ~/.config/zshscripts/.zplug
printg "Load utilities..."
source ~/.config/zshscripts/.utilities
printg "all set!"