# .config
My config shit in one place

Before using the scripts install [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)

```
brew install zsh
```

**Install [ohmyzsh](https://ohmyz.sh/#install)**
this is required as zplug uses OMZ plugins -> [zplug file](https://github.com/akadevil/.config/blob/main/zshscripts/.zplug)
plugin list is here -> [OMZ plugins](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins)

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
or via wget
```
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

Use [setup.sh](https://github.com/akadevil/.config/blob/main/setup.sh) scripts file it should automate everything(tbh the scripts are poorly tested, so might be some errors I did not noticed), if there are errors you can open the setup file and run them manually.
***Commands are tested on mac os only***
```
zsh setup.sh
```
*`*run srcipt using zsh to avoid zplug errors`*


**make it default shell**

```
chsh -s /usr/local/bin/zsh
```

### Fonts
Best font that works with alacritty and nvim lunarvim I found is [RobotoMono](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/RobotoMono.zip)(link downloads the font instantly)
