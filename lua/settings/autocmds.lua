vim.cmd([[
  autocmd BufWritePre * :%s/\s\+$//e
  autocmd BufWritePost <buffer> lua require('lint').try_lint()
]])
