

return { 
    'VonHeikemen/lsp-zero.nvim',
    config = function ()
    local lsp = require('lsp-zero')
    require('mason').setup({})
    require('mason-lspconfig').setup({
      ensure_installed = {'tsserver','html','pyright', 'vuels', 'rust_analyzer', 'eslint', 'lua_ls', "clangd"},
      handlers = {
        lsp.default_setup,
      },
  })


    lsp.configure("lua_ls", {
        settings=
            {
                Lua = {

                    diagnostics = {
                        globals ={'vim'}
                    }
                }
            }
    })
    local cmp = require('cmp')
    local cmp_select = {behavior = cmp.SelectBehavior.Select}
    cmp.setup({
        mapping = cmp.mapping.preset.insert({
      ['<C-h>'] = cmp.mapping.select_prev_item(cmp_select),
      ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
      ["<C-Space>"] = cmp.mapping.complete(),
  })
    })
    lsp.on_attach(function(client, bufnr)
      local opts = {buffer = bufnr, remap = false}
      vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
      vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
      vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
      vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
      vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
      vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
      vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
      vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
      vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
      vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    end)



    
    lsp.setup()



    vim.diagnostic.config({
        virtual_text = true
    })

    end 
}


