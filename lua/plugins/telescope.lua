return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },

  keys = {
    {"<C-p>", "<cmd>Telescope find_files<CR>", desc="Buscar Arquivos" },
    {"<C-P>", "<cmd>Telescope find_files<CR>", desc="Buscar Arquivos" },
    {"<leader>s", "<cmd>Telescope grep_string<CR>", desc="Buscar" },
  },

  opts = {
    file_ignore_patterns = {
      "node_modules", "vendor"
    }
  }
}
