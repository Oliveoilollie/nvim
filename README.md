# 🧠 JustAGuy Linux Neovim Config

> Minimal, fast, and intuitive Neovim setup — designed for Markdown writing, scripting, and everyday editing without unnecessary bloat.

This is my personal Neovim configuration (forked from justaguys repo) — focused on startup speed, clean visuals, and distraction-free editing.
Unlike justaguys original repo. i have added LSP support. it makes coding sm easier lmao. there are also other plugins i have added


--

![Screenshot](https://media.discordapp.net/attachments/1211912655401656343/1358157524716748850/UCrUbMy.png?ex=67f2d243&is=67f180c3&hm=a3428987766425ff11445bbba8cbb8cd86e5dd0909cc8bad18ce865b05166d5c&=&format=webp&quality=lossless&width=1364&height=766)

---

## ✨ Features

- ⚡ Fast startup via `lazy.nvim`
- 📁 Buffer-based file explorer (`oil.nvim`)
- 🔍 Fuzzy finding with `telescope.nvim`
- 🧠 Smart syntax highlighting via Treesitter
- 🎨 TRANSPARENCY!!!! (the github theme was nice drew, but didnt match my style much) and ofc a kanagawa theme!
- 🖋️ Markdown support with optional Prettier formatting
- 🔐 Git integration with `vim-fugitive`
- 📦 Modular plugin structure

---

## 🧩 Plugin Highlights

| Plugin                   | Purpose                                 |
|--------------------------|-----------------------------------------|
| `alpha-nvim`             | Dashboard on launch                     |
| `meson.nvim`             | Helps with installing LSPs              |
| `nvim-lspconfig`         | More LSP crap to get stuff done         |
| `bufferline.nvim`        | Tab-style buffer UI                     |
| `lualine.nvim`           | Statusline customization                |
| `telescope.nvim`         | Fuzzy finder (files, words, etc.)       |
| `oil.nvim`               | File browser using buffers              |
| `nvim-treesitter`        | Syntax parsing for multiple filetypes   |
| `vim-fugitive`           | Git integration                         |
| `github-nvim-theme`      | GitHub-style colorscheme                |
| `transparent.nvim`       | Toggle background transparency          |
| `nvim-colorizer.lua`     | Inline hex/rgb color preview            |
| `indent-blankline.nvim`  | Indentation guides                      |
| `markdown-preview.nvim`  | Live Markdown preview in browser        |
| `render-markdown.nvim`   | Inline Markdown rendering in Neovim     |
| `autopairs.nvim`         | Auto-close brackets, quotes, etc.       |
| `autolist.nvim`          | Auto-continue Markdown lists (optional) |



---

## 🚀 Installation

### 1. Requires Neovim 0.10+

You can use your system's Neovim, or install my preferred version:

```bash
wget https://github.com/Oliveoilollie/nvim/raw/main/nvim-linux-x86_64.deb
sudo apt install ./nvim-linux-x86_64.deb
```

---

### 2. Backup Any Existing Config

```bash
mv ~/.config/nvim ~/.config/nvim.backup
mv ~/.local/share/nvim ~/.local/share/nvim.backup
```

---

### 3. Clone the Config

```bash
git clone https://github.com/Oliveoilollie/nvim ~/.config/nvim
```

---

### 4. Launch Neovim

```bash
nvim
```

Plugins will auto-install on first launch.

---

## ⌨️ Keybinding Cheatsheet

| Action               | Keybinding         | Description                          |
|----------------------|--------------------|--------------------------------------|
| Find file            | `<leader>ff`       | Fuzzy file search                    |
| Live grep            | `<leader>fw`       | Grep for word/project search         |
| File explorer        | `<leader>e`        | Open `oil.nvim`                      |
| New tab              | `<leader>t`        | Create new tab                       |
| Close tab            | `<leader>x`        | Close current tab                    |
| Next tab             | `<leader>j`        | Tab forward                          |
| Previous tab         | `<leader>k`        | Tab backward                         |
| Next buffer          | `<Tab>`            | Buffer forward                       |
| Previous buffer      | `<S-Tab>`          | Buffer backward                      |
| Horizontal split     | `<leader>s`        | Open horizontal split                |
| Vertical split       | `<leader>v`        | Open vertical split                  |
| Resize splits        | `<C-Left/Right>`   | Adjust vertical split width          |
| **Markdown Preview** | `<leader>md`       | Open Markdown in browser             |
| **Prettier Format**  | `<leader>mp`       | Format Markdown (optional Prettier)  |

> All keybindings live in `lua/core/mappings.lua` — `space` is the leader key.

---

## 🛠 Requirements

- [`ripgrep`](https://github.com/BurntSushi/ripgrep) (`apt install ripgrep`)
- [`fd`](https://github.com/sharkdp/fd) (`apt install fd-find`)
- A **Nerd Font** terminal (for icons and symbols)

---

## 📝 Optional: Markdown Formatting with Prettier

This config includes optional support for formatting Markdown files using [Prettier](https://prettier.io).

### ✨ Benefits:
- Cleans up messy tables
- Aligns list spacing
- Beautifies headers, paragraphs, and spacing

### 💡 Usage:
1. Install Prettier globally:

   ```bash
   npm install -g prettier
   ```

2. Press `<leader>mp` in any `.md` file to format it.

If Prettier is missing, a friendly error message will be shown in Neovim.

> Prettier is optional — this config works great without it, but it’s a nice tool for polished Markdown.

---

## 🌐 Browser Preview for Markdown

To preview a Markdown file in your browser:

1. Set your preferred browser in `lua/plugins/markdown.lua`:

   ```lua
   vim.g.mkdp_browser = "firefox" -- or "thorium-browser", "librewolf", etc.
   ```

2. Press `<leader>md` in any Markdown file.

---

## 📁 Directory Layout

```text
nvim/
├── init.lua
├── lua/
│   ├── core/        → Options and keymaps
│   ├── plugins/     → Plugin modules
└── nvim-linux-x86_64.deb
```

---

## 🙋‍♂️  HEY I STOLE THIS CONFIG FROM-

**JustAGuy Linux**  
📺 YouTube: [@justaguylinux](https://youtube.com/@justaguylinux)  
💻 Config Repo: [github.com/drewgrif/nvim](https://github.com/drewgrif/nvim)

ofc liv changed it just a touch to get it how i want. besides that. cool guy lmao above
