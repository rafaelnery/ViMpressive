return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "VeryLazy" },
    lazy = vim.fn.argc(-1) == 0,
    keys = {
      { "<c-space>", desc = "Increment Selection" },
      { "<bs>",      desc = "Decrement Selection", mode = "x" },
    },

    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        highlight = { enable = true },
        auto_install = true,
      })
    end
  }
}
