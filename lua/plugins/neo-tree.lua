return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { "<leader>ft", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
    { "<leader>n",  "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  opts = {},
}

