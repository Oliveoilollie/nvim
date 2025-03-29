# 🧠 JustAGuy Linux Neovim Config

> Minimal, fast, and intuitive Neovim setup.

This is my personal Neovim configuration, built for speed and simplicity.
No LSPs. I intentionally keep it lightweight by avoiding Language Server Protocol integrations.
It’s tuned for users who prefer a distraction-free editing experience, enhanced by plugins for navigation, visuals, and productivity — but without the overhead of full-blown IDE features.

---

![2025-03-26_15-54](https://github.com/user-attachments/assets/b4e262ba-6e63-41ac-89ff-410055f071c7)

## ✨ Features

- ⚡ Fast startup using lazy.nvim
- 🧠 Treesitter for smart syntax highlighting
- 🔍 Telescope for fuzzy finding everything
- 🎨 GitHub-inspired theme (`github_dark_default`)
- 🧭 Intuitive keybindings
- 📦 Minimal, modular, and extendable

---

## 🧩 Plugin List

| Plugin | Description |
|--------|-------------|
| [**alpha-nvim**](https://github.com/goolord/alpha-nvim) | Customizable dashboard/start screen |
| [**indent-blankline.nvim**](https://github.com/lukas-reineke/indent-blankline.nvim) | Indentation guides |
| [**bufferline.nvim**](https://github.com/akinsho/bufferline.nvim) | Tab-like buffer line |
| [**nvim-colorizer.lua**](https://github.com/norcalli/nvim-colorizer.lua) | Inline color preview |
| [**github-nvim-theme**](https://github.com/projekt0n/github-nvim-theme) | GitHub color theme |
| [**lualine.nvim**](https://github.com/nvim-lualine/lualine.nvim) | Customizable statusline |
| [**markdown-preview.nvim**](https://github.com/iamcco/markdown-preview.nvim) | Markdown preview in browser |
| [**oil.nvim**](https://github.com/stevearc/oil.nvim) | File explorer as a buffer |
| [**telescope.nvim**](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [**transparent.nvim**](https://github.com/xiyaowong/transparent.nvim) | Toggle background transparency |
| [**nvim-treesitter**](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting and parsing |
| [**vim-fugitive**](https://github.com/tpope/vim-fugitive) | Git integration |

---

## 🚀 Installation

### 1. Neovim 0.10 or Newer Required

You can use your system's version of Neovim as long as it's **v0.10.0 or higher**.

> ✅ Optional: If you want to install **Neovim 0.11.0**, use the `.deb` included here:

```bash
wget https://github.com/drewgrif/nvim/raw/main/nvim-linux-x86_64.deb
sudo apt install ./nvim-linux-x86_64.deb
```

---

### 2. Backup Your Existing Config (Optional)

```bash
mv ~/.config/nvim ~/.config/nvim.backup
mv ~/.local/share/nvim ~/.local/share/nvim.backup
```

---

### 3. Clone This Config

```bash
git clone https://github.com/drewgrif/nvim ~/.config/nvim
```

---

### 4. Launch Neovim

```bash
nvim
```

The config will auto-install all plugins on first launch.

---

## ⌨️ Keybinding Highlights

| Action                | Keybinding                  | Action                | Keybinding                  |
|-----------------------|-----------------------------|------------------------|-----------------------------|
| **Find File**         | `<leader>ff`                | **Find Word**         | `<leader>fw`                |
| **Create Tab**        | `<leader>t`                 | **Close Tab**         | `<leader>x`                 |
| **Next Tab**          | `<leader>j`                 | **Prev Tab**          | `<leader>k`                 |
| **Next Buffer**       | `<Tab>`                     | **Prev Buffer**       | `<S-Tab>`                   |
| **Split Horizontally**| `<leader>s`                 | **Split Vertically**  | `<leader>v`                 |
| **Resize Left**       | `<C-Left>`                  | **Resize Right**      | `<C-Right>`                 |
| **File Explorer**     | `<leader>e`                 |                        |                             |

> ℹ️ Full keybindings live in `lua/core/mappings.lua` `space = leader`

---

## 🛠 Requirements

- `ripgrep` (for live grep)
- `fd` (for file search)
- A **Nerd Font** terminal (for icons)

Install the required packages:

```bash
sudo apt install ripgrep fd-find
```

---

## 📁 Directory Structure

```text
nvim/
├── init.lua
├── lua/
│   ├── core/          # Options + keymaps
│   ├── config/        # Plugin configs
└── nvim-linux-x86_64.deb
```

## 🌐 Custom Browser for Markdown Preview

Example for Firefox:

- Edit the `~/.config/nvim/lua/plugins/markdown.lua`
- Change the `vim.g.mkdp_browser` line.


```lua
config = function()
    vim.g.mkdp_filetypes = { "markdown" }
    
    -- Set custom browser
    -- For Thorium:
    -- vim.g.mkdp_browser = "thorium-browser"
    
    -- For Firefox:
    -- vim.g.mkdp_browser = "firefox"
    
    -- Run the installation process after the plugin is loaded
```

---

## 🙋‍♂️ Maintained By

**JustAGuy Linux**  
📺 YouTube: [@justaguylinux](https://youtube.com/@justaguylinux)  
