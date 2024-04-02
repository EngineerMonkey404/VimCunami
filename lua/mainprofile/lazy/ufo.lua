
return { "kevinhwang91/nvim-ufo",
dependencies = {"kevinhwang91/promise-async"},
config = function()


    local lsp = require('lsp-zero')
  require('ufo').setup()
  vim.o.foldcolumn = '1'
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
    lsp.on_attach(function(client, bufnr)
      local opts = {buffer = bufnr, remap = false}
      vim.keymap.set("n", "zR", require('ufo').openAllFolds)
      vim.keymap.set("n", "zM", require('ufo').closeAllFolds)
        vim.keymap.set('n', 'K', function()
            local winid = require('ufo').peekFoldedLinesUnderCursor()
            if not winid then
                    vim.fn.CocActionAsync('definitionHover') -- coc.nvim
                    -- choose one of coc.nvim and nvim lsp
                    vim.lsp.buf.hover()
                end
         end)
  end)
    lsp.set_server_config({
  capabilities = {
    textDocument = {
      foldingRange = {
        dynamicRegistration = false,
        lineFoldingOnly = true
      }
    }
  }
  
})
end

}
