return {
   {
      "williamboman/mason.nvim",
      config = function()
         require("mason").setup()
      end
   },
   {
      "williamboman/mason-lspconfig.nvim",
      config = function()
         require("mason-lspconfig").setup({
            ensure_installed = {
               "lua_ls",
               "rust_analyzer",
               "bashls",
               "omnisharp",
               "html",
               "jsonls",
               "tsserver",
               "marksman",
               --"sqlls", 
               "taplo",  --TOML
               "cssls",
               "lemminx", --XML
               "yamlls"
            }
         })
      end
   },
   {
      "neovim/nvim-lspconfig",
      config = function()
         local lspconfig = require("lspconfig")
         lspconfig.lua_ls.setup({})
         lspconfig.rust_analyzer.setup({})
         lspconfig.bashls.setup({})
         lspconfig.omnisharp.setup({})
         lspconfig.html.setup({})
         lspconfig.jsonls.setup({})
         lspconfig.tsserver.setup({})
         lspconfig.marksman.setup({})
         lspconfig.sqlls.setup({})
         lspconfig.taplo.setup({})
         lspconfig.cssls.setup({})
         lspconfig.lemminx.setup({})
         lspconfig.yamlls.setup({})
         --Global mappings
         local opts = {}
         vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
         vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
         vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
         vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
         vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)
         vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
         vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
--         vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
         vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
         vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
         vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
         vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
         vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
         end, opts)
         vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
         vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
         vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
         vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
         vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
         end, opts)
      end
   },
}
