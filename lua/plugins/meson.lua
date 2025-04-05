-- -- written with the help of gemini. wasnt completely written by AI but helped alot. i hate acting like code is completly mine tho lmao
---- thanks, liv! 

return {
  "williamboman/mason.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp", -- Assuming you are using cmp-nvim-lsp for completion
    "hrsh7th/nvim-cmp",
  },
  config = function()
    -- Install the LSP servers
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "pyright",
        -- "tsserver",
        "clangd",
        -- "gopls",
        -- "hls",
        "bashls",
      },
    })

    -- Use the LSP shit
    local lspconfig = require("lspconfig")
    local capabilities = require('cmp_nvim_lsp').default_capabilities() -- Get capabilities for nvim-cmp

    -- Setup each LSP server
    lspconfig.pyright.setup { capabilities = capabilities }
    lspconfig.clangd.setup { capabilities = capabilities }
    lspconfig.bashls.setup { capabilities = capabilities }
    -- Add setup for other language servers you have installed and want to use
    -- lspconfig.tsserver.setup { capabilities = capabilities }
    -- lspconfig.gopls.setup { capabilities = capabilities }
    -- lspconfig.hls.setup { capabilities = capabilities }

    -- Keybindings
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { desc = 'Go to definition' })
    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { desc = 'Show documentation' })
    vim.keymap.set('n', '<leader>ld', '<cmd>lua vim.diagnostic.open_float()<CR>', { desc = 'Show diagnostics' })
    vim.keymap.set('n', '<leader>la', '<cmd>lua vim.lsp.buf.code_action()<CR>', { desc = 'Code actions' })
    vim.keymap.set('n', '<leader>lr', '<cmd>lua vim.lsp.buf.rename()<CR>', { desc = 'Rename' })
    vim.keymap.set('i', '<C-Space>', '<cmd>lua vim.lsp.buf.completion()<CR>', { desc = 'Trigger completion' })
  end,
}
