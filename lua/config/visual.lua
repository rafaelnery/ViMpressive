vim.cmd.colorscheme("tokyonight")
vim.cmd('highlight Normal guibg=none')
vim.cmd('highlight NonText guibg=none')

vim.cmd('highlight NormalFloat guibg=#757575')
vim.cmd('highlight CursorLine guibg=#434343')
vim.cmd('highlight CursorColumn guibg=#434343')

vim.diagnostic.config({
  virtual_text = false
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

