return  {


    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        lazy = false,
    },
        "RRethy/vim-illuminate",
        {
      event = "VeryLazy",
      init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
      end,
      opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    },
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'neovim/nvim-lspconfig'},
    
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
        "ahmedkhalf/project.nvim",
      --     {
      --   "folke/tokyonight.nvim",
      --   lazy = false, -- make sure we load this during startup if it is your main colorscheme
      --   priority = 1000, -- make sure to load this before all the other start plugins
      --   config = function()
      --     -- load the colorscheme here
      --     vim.cmd([[colorscheme tokyonight]])
      --   end,
      -- },


      'JoosepAlviste/nvim-ts-context-commentstring',
    'nvim-tree/nvim-web-devicons',

}
