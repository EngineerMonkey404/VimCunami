
-- Todo - [[
-- - Toggle terminal with keys
-- - Switch between terminals 
-- - Switch between windows
-- ]]
--
return {
    'akinsho/toggleterm.nvim',
    config = function()
        require("toggleterm").setup{
        direction = "horizontal",
        insert_mappings = true,
        close_on_exit = true,
        shell = vim.o.shell,
        }

        function _G.set_terminal_keymaps()
        local opts = {buffer = 0}
        vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
        vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
        vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
        vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
        vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
        vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
        vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
        end

        vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
        vim.keymap.set('n', '<C-t>', "<cmd>ToggleTerm <CR>")
    end

}
