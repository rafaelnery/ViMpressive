return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "VeryLazy" },
    lazy = vim.fn.argc(-1) == 0,
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        highlight = { enable = true },
        auto_install = true,
      })
    end
  }
}
