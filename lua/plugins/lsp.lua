-- lua/plugins/lsp.lua
return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "williamboman/mason.nvim", config = true },
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      local keymaps = require("config.keymaps")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(ev)
          keymaps.setup_lsp(ev.buf)
        end,
      })

      vim.lsp.config("*", {
        capabilities = capabilities,
      })

      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
        },
      })

    end,
  },
}

