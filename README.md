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

- Open `init.lua` file with `nvim` to install all the plugins via UI (if it doesn't open automatically, run `:Lazy`)
- Run `:checkhealth lazy` in the command line to ensure everything is fine

## Match Windows Terminal with neovim theme

Open terminal's `settings.json` file (open arrow menu, then SHIFT + LMB on Settings). Then paste the following json into the schemes array:
```json
{
        "name": "Tokyo Night",
        "foreground": "#a9b1dc",
        "background": "#1a1b26",
        "cursorColor": "#c0caf5",
        "selectionBackground": "#28344a",
        "black": "#414868",
        "red": "#f7768e",
        "green": "#73daca",
        "yellow": "#e0af68",
        "blue": "#7aa2f7",
        "purple": "#bb9af7",
        "cyan": "#7dcfff",
        "white": "#c0caf5",
        "brightBlack": "#414868",
        "brightRed": "#f7768e",
        "brightGreen": "#73daca",
        "brightYellow": "#e0af68",
        "brightBlue": "#7aa2f7",
        "brightPurple": "#bb9af7",
        "brightCyan": "#7dcfff",
        "brightWhite": "#c0caf5"
}
```
