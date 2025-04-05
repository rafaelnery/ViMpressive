return {
  {
    "neovim/nvim-lspconfig",
    keys = {
      {
        "<leader>oi",
        function()
          vim.lsp.buf.execute_command({ command = '_typescript.organizeImports', arguments = { vim.fn.expand('%:p') } })
        end,
        desc = "Buscar Arquivos",
        ft = "typescript",
      },
      { "<leader>r", function() vim.lsp.buf.rename() end, desc = "Renomeia simbolo" },
      { "<leader>f", function() vim.lsp.buf.format() end, desc = "Formata arquivos" },
    }
  },
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/vim-vsnip'
    },
    config = function()
      local cmp = require('cmp')

      cmp.setup({

        snippet = {
          expand = function(args)
            vim.fn "vsnip#anonymous" -- Para usuários de `vsnip`.
          end,
        },
        mapping = {
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-d>'] = cmp.mapping.scroll_docs(-4),
          ['<C-e>'] = cmp.mapping.close(),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['<Down>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
          ['<Up>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
          ['<Tab>'] = cmp.mapping.select_next_item(),
        },
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'buffer' },
          { name = 'path' },
        })
      })
    end
  },
}
