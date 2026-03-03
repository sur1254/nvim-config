# 🚀 Neovim Config — sur1254

> Konfigurasi Neovim modern untuk **Termux (Android)** — ringan, cepat, dan lengkap.
> LSP + Autocomplete + Custom Winbar + Popup Menu + Emmet + Snippets.

---

![Neovim](https://img.shields.io/badge/Neovim-0.9%2B-57A143?style=flat&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/Config-Lua-2C2D72?style=flat&logo=lua&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-blue?style=flat)

---

## 📁 Struktur Folder

```
~/.config/nvim/
│
├── init.lua                    ← Entry point utama
├── lazy-lock.json              ← Lock file versi plugin (lazy.nvim)
│
└── lua/
    ├── core/
    │   ├── setup.lua           ← Inisialisasi lazy.nvim + semua plugin
    │   ├── lsp.lua             ← Konfigurasi LSP, Mason, nvim-cmp, snippet
    │   └── keymaps.lua         ← Clipboard Termux + keymaps global
    │
    ├── plugins/
    │   ├── init.lua            ← Entry point modul UI custom
    │   ├── emmet.lua           ← Plugin Emmet (HTML/CSS expand)
    │   └── lazy.lua            ← (opsional) Konfigurasi lazy tambahan
    │
    └── ui/
        ├── winbar.lua          ← Custom winbar (tab bar file history)
        ├── menu.lua            ← Popup menu shortcut (Space)
        └── disable_italic.lua  ← Matikan italic, tetap simpan warna
```

---

## ✨ Fitur

| Fitur | Keterangan |
|---|---|
| � **LSP** | `lua_ls`, `ts_ls`, `pyright`, `html` via Mason |
| ⚡ **Autocomplete** | `nvim-cmp` + `vsnip` + `friendly-snippets` |
| 📁 **File Explorer** | `nvim-tree` toggle dengan `Ctrl+E` |
| 📊 **Status Line** | `lualine.nvim` tema OneDark |
| � **Winbar Custom** | Tab bar file history dengan ikon per tipe file |
| 📋 **Popup Menu** | Tekan `Space` untuk shortcut menu floating |
| 🔍 **Fuzzy Finder** | `telescope.nvim` |
| 💻 **Terminal** | `toggleterm.nvim` (`Ctrl+\`) |
| ✏️ **Emmet** | Expand HTML/CSS snippets dengan `Tab` |
| 📋 **Clipboard** | Integrasi `termux-clipboard` |
| 🎨 **Theme** | `onedark.nvim` style `deep`, tanpa italic |

---

## ⌨️ Keymaps Utama

### Normal Mode
| Shortcut | Aksi |
|---|---|
| `Space` | Buka/tutup popup menu shortcut |
| `Ctrl+E` | Toggle NvimTree file explorer |
| `Ctrl+\` | Toggle terminal horizontal |
| `Ctrl+Right` | Tab berikutnya (winbar) |
| `Ctrl+Left` | Tab sebelumnya (winbar) |
| `Ctrl+Up` | Toggle tampilkan path lengkap |
| `Ctrl+Down` | Toggle tampilkan hanya file aktif |
| `qq` | Tutup tab / keluar (smart close) |
| `qw` | Simpan lalu tutup tab |
| `Ctrl+Q` | Force quit (`:q!`) |

### Leader (`Space`) — LSP
| Shortcut | Aksi |
|---|---|
| `gd` | Go to Definition |
| `K` | Hover Docs |
| `gr` | References |
| `<Leader>rn` | Rename simbol |
| `<Leader>ca` | Code Action |
| `[d` / `]d` | Navigasi diagnostik |

### Telescope
| Shortcut | Aksi |
|---|---|
| `<Leader>ff` | Find Files |
| `<Leader>fg` | Live Grep |
| `<Leader>fb` | Buffers |
| `<Leader>fh` | Help Tags |

### Clipboard (Termux)
| Shortcut | Aksi |
|---|---|
| `y` / `yy` | Yank ke clipboard sistem |
| `p` / `P` | Paste dari clipboard sistem |
| `x` / `X` | Cut ke clipboard sistem |
| `Ctrl+V` (Insert) | Paste dari clipboard |

---

## 📦 Plugin List

| Plugin | Fungsi |
|---|---|
| `lazy.nvim` | Plugin manager |
| `onedark.nvim` | Colorscheme |
| `lualine.nvim` | Status line |
| `nvim-tree.lua` | File explorer |
| `nvim-web-devicons` | Ikon file |
| `telescope.nvim` | Fuzzy finder |
| `toggleterm.nvim` | Terminal terintegrasi |
| `nvim-lspconfig` | Konfigurasi LSP |
| `mason.nvim` | Install LSP server otomatis |
| `mason-lspconfig.nvim` | Bridge Mason ↔ lspconfig |
| `nvim-navic` | Breadcrumb LSP di winbar |
| `nvim-cmp` | Autocomplete engine |
| `cmp-nvim-lsp` | Source LSP untuk cmp |
| `vim-vsnip` + `cmp-vsnip` | Snippet engine |
| `friendly-snippets` | Koleksi snippet HTML/JS/Python |
| `emmet-vim` | Emmet untuk HTML/CSS |
| `plenary.nvim` | Library utility (dependensi) |

---

## 🛠️ Instalasi

### Prasyarat (Termux)
```bash
pkg update && pkg upgrade
pkg install neovim git lua-language-server nodejs python
pip install pyright
```

### Clone Config
```bash
git clone https://github.com/sur1254/nvim-config.git ~/.config/nvim
```

### Jalankan Neovim
```bash
nvim
```
Lazy.nvim akan otomatis menginstall semua plugin pada pertama kali. Setelah itu jalankan `:Mason` untuk menginstall LSP server.

---

## � Kustomisasi

- **Menambah LSP baru** → edit `lua/core/lsp.lua`, tambahkan `vim.lsp.config()` dan `vim.lsp.enable()`
- **Menambah shortcut menu** → edit `lua/ui/menu.lua`, tambahkan entry di tabel `shortcuts`
- **Mengganti theme** → edit `lua/core/setup.lua` bagian `onedark.nvim`
- **Plugin baru** → buat file baru di `lua/plugins/` dengan format return table lazy.nvim

---

## 📄 Lisensi

MIT License — bebas digunakan dan dimodifikasi.

---

> Made with ❤️ for Termux + Neovim
> [github.com/sur1254](https://github.com/sur1254)
