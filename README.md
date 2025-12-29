# Neovim config files

My config files for setting up Neovim on Linux

## Requirements

- Clone this config into `$XDG_CONFIG_HOME` (or `~/.config` by default)
- Install Neovim, Git, Lua and LuaRocks
- Add `~/.local/share/nvim/mason/bin` directory to PATH
- Make sure a nerdy font has been installed for icons

## After installation and cloning

- Open any file with `nvim` to install all the plugins via UI
- Run `:checkhealth lazy` in the command line to ensure everything is fine
- Make sure Mason-downloaded LSPs, linters and formatters work as intended (`:checkhealth vim.lsp` may help)

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
