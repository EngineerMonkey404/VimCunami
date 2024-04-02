return {

"SmiteshP/nvim-navic",
dependecies = { "neovim/nvim-lspconfig"},
config = function()
local lsp_zero = require('lsp-zero')
lsp_zero.on_attach(function(client, bufnr)

      local opts = {buffer = bufnr, remap = false}
  if client.server_capabilities.documentSymbolProvider then
    require('nvim-navic').attach(client, bufnr)
  end
end)
end

}
