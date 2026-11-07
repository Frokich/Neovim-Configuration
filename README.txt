================================================================================
NEOVIM CONFIGURATION 🚀
================================================================================

A modern, fast, and modular Neovim configuration tailored for development, 
built with lazy.nvim.


================================================================================
💻 SYSTEM DEPENDENCIES / PREREQUISITES
================================================================================

Before launching Neovim for the first time, make sure you have the following 
tools installed on your system:

1. Neovim (v0.10+ or v0.12+)
2. Git (required for lazy.nvim to clone plugins)
3. A Nerd Font (mandatory for icons in neo-tree, lualine, and telescope. 
   Recommended: JetBrainsMono Nerd Font or FiraCode Nerd Font)
4. C Compiler / Build Tools (needed for compiling plugins like telescope-fzf-native):
   - Linux (Ubuntu/Debian): sudo apt install build-essential
   - macOS: xcode-select --install
5. Node.js / npm (often required by language servers installed via Mason, like ts_ls or lua_ls)
6. ripgrep (highly recommended for telescope.nvim to make text searching lightning-fast):
   - Linux: sudo apt install ripgrep
   - macOS: brew install ripgrep


================================================================================
⚙️ CORE FEATURES & PLUGINS
================================================================================

- Plugin Manager: lazy.nvim for lightning-fast loading and package management.
- LSP & Mason: Automated Language Server Protocol setup via mason.nvim and nvim-lspconfig (lua_ls, ts_ls, pyright).
- Autocompletion: nvim-cmp with snippets (LuaSnip) and LSP sources.
- File Explorer: neo-tree.nvim with full git integration and auto-tracking.
- Fuzzy Finding: telescope.nvim for files, text grep, and project symbols.
- Statusline: lualine.nvim for a clean and informative UI.
- Surrounding: nvim-surround for effortlessly managing quotes, brackets, and tags.
- Todo Management: todo-comments.nvim to track and jump through code notes (TODO, FIXME, WARN).


================================================================================
⌨️ KEYMAPS CHEAT SHEET
================================================================================

[ General & Navigation ]
- <C-s>         (NORMAL) : Save file (:w)
- <leader>q     (NORMAL) : Quit editor (:q)
- <C-h/j/k/l>   (NORMAL) : Switch between window panes
- <leader>se    (NORMAL) : Show diagnostics/errors float on current line

[ File Tree (Neo-tree) ]
- <leader>e     (NORMAL) : Toggle file tree
- <leader>b     (NORMAL) : Focus file tree on current active file

[ Search (Telescope & Todos) ]
- <leader>ff    (NORMAL) : Find files by name
- <leader>fg    (NORMAL) : Live grep (search text across project)
- <leader>fb    (NORMAL) : Search open buffers
- <leader>ft    (NORMAL) : Find project TODOs/FIXMEs via Telescope
- ]t / [t       (NORMAL) : Jump to next / previous todo comment in file

[ LSP (Language Server Protocol) - Active when attached to a buffer ]
- gd            (NORMAL) : Go to definition
- gD            (NORMAL) : Go to declaration
- K             (NORMAL) : Show hover documentation
- gi            (NORMAL) : Find implementations
- <leader>rn    (NORMAL) : Smart rename symbol across project
- <leader>ca    (NORMAL/VISUAL) : Code actions
- gr            (NORMAL) : Find references

[ Autocompletion (nvim-cmp) - Active when completion menu is open ]
- <C-j> / <C-k> (INSERT) : Select next / previous item
- <C-Space>     (INSERT) : Trigger completion menu manually
- <C-e>         (INSERT) : Close completion menu
- <CR> (Enter)  (INSERT) : Confirm selection

[ Surrounding (nvim-surround) ]
- ys + motion + char : Add surroundings (e.g. ysw" wraps word in quotes)
- yss + char         : Surround entire line (e.g. yss) wraps line in parens)
- ds + char          : Delete surroundings (e.g. ds" removes surrounding quotes)
- cs + old + new     : Change surroundings (e.g. cs'" changes single to double quotes)

And other you can see in keymaps.lua

================================================================================
🚀 GETTING STARTED
================================================================================

Clone or copy this configuration into your Neovim configuration directory:

  git clone <your-repo-url> ~/.config/nvim

Open Neovim, and lazy.nvim will automatically bootstrap and install all configured plugins.
