![desktop](https://github.com/DankChoir/dotfiles/assets/79992320/1b2721ea-a2cc-4c80-888d-a0c99bdc880e)
![meowvim](https://github.com/DankChoir/dotfiles/assets/79992320/35466894-de75-4e26-bbad-53f4555faac6)

# Danko's dotfiles 💖

My silly, bombastic dotfiles - Holy Grail of dotfiles

**Warning**: Feel free to blindly use my settings if you've got no idea they do.
It works most of the time. **TRUST ME**

## What I use 🔰

- Window Manager: [Hyprland](https://hyprland.org/)
- Bar: [Waybar](https://github.com/Alexays/Waybar)
- IDE: Neovim - with [NvChad](https://nvchad.com)
- Terminal: [kitty](https://github.com/kovidgoyal/kitty)
- Shell: fish (with [starship](https://starship.rs/) prompt)
- Notification: [mako](https://github.com/emersion/mako)
- Laucher: [rofi](https://github.com/davatorium/rofi)

## Terminal ultilities 🛠️

![term-demo](https://github.com/DankChoir/dotfiles/assets/79992320/78cc0e42-fe53-42b8-895d-73d4279dc36d)

- Git
- [lazygit](https://github.com/jesseduffield/lazygit) - minimal TUI for git
- [Nerd fonts](https://www.nerdfonts.com/) - Powerline-patched fonts for
  terminal icons
  - I use `JetBrains Mono Light`
- [z for fish](https://github.com/jethrokuan/z) - directory jumper for fish
  shell
- [Eza](https://github.com/eza-community/eza) - my goto file-listing command, a
  replacement for `ls`

## Neovim config ⚙️

![dap-demo](https://github.com/DankChoir/dotfiles/assets/79992320/076bf5fb-5b1e-4f15-a096-5b41a2c676dd)

My custom [NvChad](https://nvchad.com) config will follow this structure

```
├── init.lua
└── lua
    ├── core            -- NvChad's defaults: init, mappings
    ├── plugins         -- NvChad's default plugins
    │   ├── configs
    │   └── init.lua
    │
    └── custom          -- this is the one folder we want to customize
        ├── chadrc.lua  -- override NvChad's defaults
        ├── configs     -- for plugins's config
        │   └── ...
        ├── highlights.lua  -- change text objects 'highlight group' (colors)
        ├── init.lua        -- adjust Neovim default, call `utils` folder
        ├── mappings.lua    -- change & add key shortcuts
        ├── plugins.lua     -- install & setup plugins
        └── utils
            ├── autocommands.lua    -- command that active on certain events
            ├── neovide.lua         -- smooth GUI for neovim
            └── options.lua         -- change Neovim options
```

#### Installation

```bash
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```

## Misc

![vencord](https://github.com/DankChoir/dotfiles/assets/79992320/c962aa7d-59c0-4a08-82b7-146d18859494)
