echo "Injecting constants..."
source ~/.config/zshscripts/.constants
echo "Injecting functions..."
source ~/.config/zshscripts/.functions
printg "Setup aliases..."
source ~/.config/zshscripts/aliases/.all
printg "Load utilities..."
source ~/.config/zshscripts/.utilities
printg "Executing zplug libs and plugins..."
source ~/.config/zshscripts/.zplug
printg "all set!"