return {
  {
    'tpope/vim-fugitive',
    event = {"VeryLazy" },
    lazy = vim.fn.argc(-1) == 0,
  }
}
