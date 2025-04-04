return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },

  keys = {
    {"<C-p>", "<cmd>Telescope find_files<CR>", desc="Buscar Arquivos" },
    {"<C-P>", "<cmd>Telescope find_files<CR>", desc="Buscar Arquivos" },
  },

  opts = {
    file_ignore_patterns = {
      "node_modules", "vendor"
    }
  }
}
