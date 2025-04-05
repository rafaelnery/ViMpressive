return {
  "nvim-neo-tree/neo-tree.nvim",

  keys = {
    { "<leader>ft", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
    { "<leader>b", "<cmd>Neotree buffers   float toggle<cr>", desc = "NeoTree" },
    { "<leader>g", "<cmd>Neotree git_status float toggle<cr>", desc = "NeoTree" },
    { "<leader>n",  "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
  },

  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },

  config = function()

    require('neo-tree').setup({
        filesystem = {
          follow_current_file = {
            enabled = true, -- This will find and focus the file in the active buffer every time
            leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
          },
        },
    })
  end
}

