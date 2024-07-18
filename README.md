# Neovim config files

My config files for setting up Neovim on Linux

## Requirements

- Neovim >= 0.8 (with LuaJIT)
```bash
sudo snap install nvim --classic
```

- Git >= 2.19
```bash
sudo apt install git-all
```

- luarocks
```bash
sudo apt install lua{latest version}
sudo apt install luarocks
```

## After installation and cloning

- In `~/.config` folder, run:
  ```bash
  mv neovim-config/ neovim/
  ```
  
- Open a random file with `nvim` to install all the plugins via UI. Then run `:checkhealth lazy` in the command line to ensure everything is fine
