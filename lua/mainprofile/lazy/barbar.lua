
return {
'romgrk/barbar.nvim',
dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },

config = function() 

    local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)

map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)

-- Goto buffer in position..
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)

-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)

-- Wipeout buffers
map('n', '<leader>bwa', '<Cmd>BufferWipeout<CR>', opts)
map('n', '<leader>bwc', '<Cmd>BufferCloseAllButCurrent<CR>', opts)
map('n', '<leader>bwp', '<Cmd>BufferCloseAllButPinned<CR>', opts)
map('n', '<leader>bwe', '<Cmd>BufferCloseAllButCurrentOrPinned<CR>', opts)
map('n', '<leader>bwl', '<Cmd>BufferCloseBuffersLeft<CR>', opts)
map('n', '<leader>bwr', '<Cmd>BufferCloseBuffersRight<CR>', opts)

-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
    vim.g.barbar_auto_setup = false 

-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)

-- Sort automatically by...
map('n', '<leader>bob', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<leader>bod', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<leader>bol', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<leader>bow', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

end

}
