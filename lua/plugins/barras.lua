return{
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = {"VeryLazy" },
    lazy = vim.fn.argc(-1) == 0, 
    opts = {
      icons_enabled = true,
      always_show_tabline = true,
    },

  },
  {
    'romgrk/barbar.nvim',
    dependencies = {'lewis6991/gitsigns.nvim', 'nvim-tree/nvim-web-devicons', },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      animation = true,

    },
  },

}

