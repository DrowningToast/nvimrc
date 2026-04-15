# DrowningToast's Neovim Config

Personal Neovim config inspired by [ThePrimeagen](https://github.com/ThePrimeagen/neovimrc), heavily modified to suit my taste.

**Package manager:** [lazy.nvim](https://github.com/folke/lazy.nvim)  
**Colorscheme:** [tokyonight](https://github.com/folke/tokyonight.nvim) (storm, transparent)

---

## Requirements

- Neovim >= 0.9
- Git
- A [Nerd Font](https://www.nerdfonts.com/) (for icons)
- `tree-sitter` CLI (optional, for auto-install of parsers)
- `ripgrep` (for Telescope live grep)
- Node.js (for LSP servers via Mason)

---

## Getting Started

```bash
# Back up existing config if needed
mv ~/.config/nvim ~/.config/nvim.bak

# Clone the repo
git clone https://github.com/DrowningToast/nvim-config ~/.config/nvim

# Open Neovim — lazy.nvim will auto-install on first launch
nvim
```

Lazy will bootstrap itself and install all plugins. LSP servers (Lua, Rust, TypeScript, ESLint) are auto-installed via Mason on first use.

---

## Editor Settings

| Setting | Value |
|---|---|
| Leader key | `Space` |
| Line numbers | Relative |
| Tab width | 4 spaces (expandtab) |
| Color column | 150 |
| Scroll offset | 8 lines |
| Undo | Persistent (`~/.config/.nvim/undodir`) |
| Swap / Backup | Disabled |

---

## Keymaps

> `<leader>` = `Space`

### Navigation

| Key | Mode | Action |
|---|---|---|
| `<leader>pv` | Normal | Open file explorer (netrw) |
| `\` | Normal | Reveal current file in Neo-tree |
| `<C-j>` | Normal / Visual | Scroll down half-page, cursor centered |
| `<C-k>` | Normal / Visual | Scroll up half-page, cursor centered |
| `n` / `N` | Normal | Search next / prev, cursor stays centered |

### Editing

| Key | Mode | Action |
|---|---|---|
| `J` / `K` | Visual | Move selected lines down / up |
| `<leader>p` | Visual | Paste without overwriting yank register |
| `<leader>y` | Normal / Visual | Yank to system clipboard |
| `<leader>Y` | Normal | Yank line to system clipboard |
| `<leader>h` | Normal | Replace all occurrences of word under cursor |
| `<leader>x` | Normal | `chmod +x` current file |
| `Q` | Normal | Disabled (no-op) |

### Telescope (fuzzy finder)

| Key | Mode | Action |
|---|---|---|
| `<leader>pf` | Normal | Find files |
| `<C-p>` | Normal | Find files (git-tracked only) |
| `<leader>ps` | Normal | Grep string (prompted) |
| `<leader>pws` | Normal | Grep word under cursor |
| `<leader>pWs` | Normal | Grep WORD under cursor |
| `<leader>vh` | Normal | Search help tags |

### LSP

These keymaps are active whenever an LSP server attaches to a buffer.

| Key | Mode | Action |
|---|---|---|
| `gd` | Normal | Go to definition |
| `gi` | Normal | Go to implementation |
| `gr` | Normal | List references |
| `H` | Normal | Hover documentation |
| `aa` | Normal | Code action |
| `ar` | Normal | Rename symbol |
| `<C-h>` | Insert | Signature help |
| `<leader>vd` | Normal | Open diagnostic float |
| `<leader>vws` | Normal | Workspace symbol search |
| `[d` / `]d` | Normal | Next / prev diagnostic |

### Completion (nvim-cmp)

| Key | Action |
|---|---|
| `<C-j>` | Next completion item |
| `<C-k>` | Previous completion item |
| `<CR>` | Confirm selection |

### Git (vim-fugitive)

| Key | Context | Action |
|---|---|---|
| `<leader>gs` | Normal | Open Git status |
| `<leader>p` | Fugitive buffer | `git push` |
| `<leader>P` | Fugitive buffer | `git pull --rebase` |
| `<leader>t` | Fugitive buffer | `git push -u origin <branch>` (prompted) |
| `gu` | Diff | Accept left side (//2) |
| `gh` | Diff | Accept right side (//3) |

### Diagnostics & Utilities

| Key | Action |
|---|---|
| `` <leader>` `` | Toggle Trouble (project-wide diagnostics) |
| `<leader>u` | Toggle Undotree |
| `<leader>zz` | Zen mode (90 wide, line numbers on) |
| `<leader>zZ` | Full zen mode (80 wide, line numbers off) |

---

## Plugins

| Plugin | Purpose |
|---|---|
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager |
| [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) | Colorscheme |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP client config |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | LSP server installer |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) + LuaSnip | Autocompletion |
| [fidget.nvim](https://github.com/j-hui/fidget.nvim) | LSP progress indicator |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting & indentation |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) | File explorer (right side) |
| [vim-fugitive](https://github.com/tpope/vim-fugitive) | Git integration |
| [trouble.nvim](https://github.com/folke/trouble.nvim) | Diagnostics list |
| [undotree](https://github.com/mbbill/undotree) | Visual undo history |
| [zen-mode.nvim](https://github.com/folke/zen-mode.nvim) | Distraction-free editing |
| [cloak.nvim](https://github.com/laytan/cloak.nvim) | Hides secrets in `.env` files |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Status line |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Auto-close brackets |
| [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) | Auto-close HTML tags |
| [nvim-colorizer.lua](https://github.com/NvChad/nvim-colorizer.lua) | Inline color previews |
| [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) | Live Markdown preview in browser |
| [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | File icons |

### Treesitter languages

`javascript`, `typescript`, `lua`, `rust`, `go`, `c`, `cpp`, `python`, `bash`, `jsdoc`, `vimdoc`, `templ`

### LSP servers (auto-installed via Mason)

`lua_ls`, `rust_analyzer`, `tsserver` (TypeScript), `eslint`

---

## VS Code Integration

This config supports running inside [VS Code with the Neovim extension](https://github.com/vscode-neovim/vscode-neovim). LSP, Treesitter, and Neo-tree are automatically disabled in that context so they don't conflict with VS Code's native equivalents.
