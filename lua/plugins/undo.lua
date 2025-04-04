return { 
  {
    "jiaoshijie/undotree",
    config = true,
    dependencies = { 
        'nvim-lua/plenary.nvim' 
    }, 
    keys = { 
      { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>", desc = "Abre UndoTree" },
    }
  }
}
