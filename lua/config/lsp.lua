require('lspconfig').lua_ls.setup({
  settings = {
    Lua = {
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
      diagnostics = {
        diagnostics = { disable = { 'missing-fields' } },
        globals = {
          "vim"
        }
      },
    }
  }
})
require('lspconfig').ts_ls.setup({
  commands = {
    OrganizeImports = {
      function()
        local params = {
          command = "_typescript.organizeImports",
          arguments = { vim.api.nvim_buf_get_name(0) },
        }
        vim.lsp.buf.execute_command(params)
      end,
      description = "Organize Imports"
    }
  }
})
require('lspconfig').vimls.setup({})

