local bufnr = vim.api.nvim_get_current_buf()

-- Code actions
vim.keymap.set("n", "<leader>ca", function()
  vim.cmd.RustLsp('codeAction')
end, { silent = true, buffer = bufnr, desc = "Code Action" })

-- Hover with actions
vim.keymap.set("n", "K", function()
  vim.cmd.RustLsp({ 'hover', 'actions' })
end, { silent = true, buffer = bufnr, desc = "Hover Actions" })

-- Run/Debug
vim.keymap.set("n", "<leader>rr", function()
  vim.cmd.RustLsp('run')
end, { silent = true, buffer = bufnr, desc = "Run" })

vim.keymap.set("n", "<leader>rd", function()
  vim.cmd.RustLsp('debug')
end, { silent = true, buffer = bufnr, desc = "Debug" })

vim.keymap.set("n", "<leader>rt", function()
  vim.cmd.RustLsp('testables')
end, { silent = true, buffer = bufnr, desc = "Run Tests" })

-- Diagnostics
vim.keymap.set("n", "<leader>re", function()
  vim.cmd.RustLsp('explainError')
end, { silent = true, buffer = bufnr, desc = "Explain Error" })

vim.keymap.set("n", "<leader>rc", function()
  vim.cmd.RustLsp('openCargo')
end, { silent = true, buffer = bufnr, desc = "Open Cargo.toml" })

-- Macro expansion
vim.keymap.set("n", "<leader>rm", function()
  vim.cmd.RustLsp('expandMacro')
end, { silent = true, buffer = bufnr, desc = "Expand Macro" })

-- Parent module
vim.keymap.set("n", "<leader>rp", function()
  vim.cmd.RustLsp('parentModule')
end, { silent = true, buffer = bufnr, desc = "Parent Module" })

-- Join lines
vim.keymap.set("n", "<leader>rj", function()
  vim.cmd.RustLsp('joinLines')
end, { silent = true, buffer = bufnr, desc = "Join Lines" })

-- Structural search replace
vim.keymap.set("n", "<leader>rs", function()
  vim.cmd.RustLsp('ssr')
end, { silent = true, buffer = bufnr, desc = "Structural Search Replace" })

-- Crate graph
vim.keymap.set("n", "<leader>rg", function()
  vim.cmd.RustLsp('crateGraph')
end, { silent = true, buffer = bufnr, desc = "Crate Graph" })

-- View HIR/MIR
vim.keymap.set("n", "<leader>rh", function()
  vim.cmd.RustLsp('view', 'hir')
end, { silent = true, buffer = bufnr, desc = "View HIR" })

vim.keymap.set("n", "<leader>rM", function()
  vim.cmd.RustLsp('view', 'mir')
end, { silent = true, buffer = bufnr, desc = "View MIR" })

-- Workspace symbol
vim.keymap.set("n", "<leader>rw", function()
  vim.cmd.RustLsp('workspaceSymbol')
end, { silent = true, buffer = bufnr, desc = "Workspace Symbol" })