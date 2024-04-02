
function _G.CopyAbsoluteBufferName()
  vim.cmd("echo expand('%:p')")
  vim.cmd("let @+ = expand('%:p')")
  vim.cmd("echo \"Full path of \" . expand('%:t') . \" was copied to system clipboard\"")
end
function _G.CopyRelativeBufferName()
  vim.cmd("echo expand('%')")
  vim.cmd("let @+ = expand('%')")
  vim.cmd("echo \"Relative path of \" . expand('%:t') . \" was copied to system clipboard\"")
end
function _G.CopyBufferName()
  vim.cmd("echo expand('%:t')")
  vim.cmd("let @+ = expand('%:t')")
  vim.cmd("echo \"Full path of \" . expand('%:t') . \" was copied to system clipboard\"")
end
function _G.CopyBufferNameDirectory()
  vim.cmd("echo expand('%:h')")
  vim.cmd("let @+ = expand('%:h')")
  vim.cmd("echo \"Full path of \" . expand('%:t') . \" was copied to system clipboard\"")
end
vim.cmd("command! CopyAbsoluteBufferName lua CopyAbsoluteBufferName()")
vim.cmd("command! CopyBufferNameDirectory lua CopyBufferNameDirectory()")
vim.cmd("command! CopyRelativeBufferName lua CopyRelativeBufferName()")
vim.cmd("command! CopyBufferName lua CopyBufferName()")
