local keymap = vim.keymap.set
local opts = { silent = true }

-- Simple window management
keymap("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap("n", "<leader>sx", ":close<CR>", { desc = "Close current split" })

-- Simple movement between windows
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Show all error/warnings on line where cursor
keymap("n", "<leader>se", vim.diagnostic.open_float, opts)

-- Open neo-tree
keymap("n", "<leader>e", ":Neotree toggle<CR>", opts)
-- Return focus in tree
keymap("n", "<leader>b", ":Neotree focus<CR>", opts)

-- Telescope keymaps
keymap("n", "]t", function()
    require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

keymap("n", "[t", function()
    require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

local buildin = require("telescope.builtin")
keymap("n", "<leader>ff", buildin.find_files, { desc = "Telescope find files" })
keymap("n", "<leader>fg", buildin.live_grep, { desc = "Telescope live grep" })
keymap("n", "<leader>fb", buildin.buffers, { desc = "Telescope buffers" })
keymap("n", "<leader>ft", ":TodoTelescope<CR>", { desc = "Find todos with Telescope" })


-- Format current buffer with LSP using Alt + a -> f
keymap('n', '<A-a>f', function()
    vim.lsp.buf.format({ async = true })
end, { desc = 'LSP format current buffer' })

-- Table for lsp
M = {}
M.setup_lsp = function(bufnr)
	local lsp_opts = { buffer = bufnr, silent = true }

	keymap("n", "gD", vim.lsp.buf.declaration, lsp_opts)
	keymap("n", "gd", vim.lsp.buf.definition, lsp_opts)
	keymap("n", "K", vim.lsp.buf.hover, lsp_opts)
	keymap("n", "gi", vim.lsp.buf.implementation, lsp_opts)
	keymap("n", "<leader>rn", vim.lsp.buf.rename,lsp_opts)
	keymap({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, lsp_opts)
	keymap("n", "gr", vim.lsp.buf.references, lsp_opts)
end
return M
