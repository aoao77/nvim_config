require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
    "lua_ls",
    "rust_analyzer",
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- lua_ls setup
require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}

-- rust-analyzer setup
require("lspconfig").rust_analyzer.setup({
    on_attach = function(client, bufnr)
        -- Optional: Custom keybindings for LSP functionality
        local bufopts = { noremap=true, silent=true, buffer=bufnr }
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    end,
    flags = {
        debounce_text_changes = 150,
    },
    settings = {
        ["rust-analyzer"] = {
            cargo = {
                allFeatures = true,
            },
        },
    },
})
