# .config
My config shit in one place

Use setup.sh scripts to automate or follow the commands below to setup everything manually.
*Commands are tested on mac os only*
```
zsh setup.sh
```
*`*run srcipt using zsh to avoid zplug errors`*


**Install `ohmyzsh`**

```
brew install zsh
```

**make it default shell**

```
chsh -s /usr/local/bin/zsh
```

**Install `nvm`**
```
brew update
brew install nvm
[ ! -d "~/.nvm" ] && mkdir ~/.nvm
```

**Copy the scripts from `templates/.zshrc` to your `.zshrc` file**

```
touch ~/.zshrc
pbcopy < ~/.config/zshscripts/templates/.zshrc
pbpaste > ~/.zshrc
```

**Install `Zplug`**

```
brew install zplug
```

**After the dependencies are installed run**

```
source ~/.zshrc
```

**Install `Alacritty`**

```
brew install --cask alacritty
```
