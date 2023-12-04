echo "Injecting constants..."
source ~/.config/zshscripts/.constants
echo "Injecting functions..."
source ~/.config/zshscripts/.functions
info "Setup aliases..."
source ~/.config/zshscripts/aliases/.all
info "Load utilities..."
source ~/.config/zshscripts/.utilities
info "Executing zplug libs and plugins..."
source ~/.config/zshscripts/.zplug
info "all set!"