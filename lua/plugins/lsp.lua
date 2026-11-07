-- lua/plugins/lsp.lua
return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      { "williamboman/mason.nvim", config = true },
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      local lspconfig = require("lspconfig")
      local mason_lspconfig = require("mason-lspconfig")
      local keymaps = require("config.keymaps")

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(ev)
          keymaps.setup_lsp(ev.buf)
        end,
      })

      mason_lspconfig.setup({
        ensure_installed = {
          "lua_ls",
        },
        handlers = {
          function(server_name)
            lspconfig[server_name].setup({
              capabilities = require("cmp_nvim_lsp").default_capabilities(),
            })
          end,
        },
      })
    end,
  },
}
