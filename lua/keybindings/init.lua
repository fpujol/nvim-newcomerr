vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

map('i', 'jk', '<ESC>', {noremap = true, silent = false})
map('i', 'kj', '<ESC>', {noremap = true, silent = false})

map('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

map('v', '<', '<gv', {noremap = true, silent = false})
map('v', '>', '>gv', {noremap = true, silent = false})

map("n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>",
    {noremap = true, silent = true})
map("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>",
    {noremap = true, silent = true})

--Debug
map("n", "<F4>", ":lua require('dapui').toggle()<CR>" , {noremap = true, silent = false})
map("n", "<F5>", ":lua require('dap').toggle_breakpoint()<CR>", {noremap = true, silent = false})
map("n", "<F9>", ":lua require('dap').continue()<CR>", {noremap = true, silent = false})

map("n", "<F1>", ":lua require('dap').step_over()<CR>", {noremap = true, silent = false})
map("n", "<F2>", ":lua require('dap').step_into()<CR>", {noremap = true, silent = false})
map("n", "<F3>", ":lua require('dap').step_out()<CR>", {noremap = true, silent = false})

map("n", "<Leader>dsc", ":lua require('dap').continue()<CR>", {noremap = true, silent = false})
map("n", "<Leader>dsv", ":lua require('dap').step_over()<CR>", {noremap = true, silent = false})
map("n", "<Leader>dsi", ":lua require('dap').step_into()<CR>", {noremap = true, silent = false})
map("n", "<Leader>dso", ":lua require('dap').step_out()<CR>", {noremap = true, silent = false})

map("n", "<Leader>dhh", ":lua require('dap.ui.variables').hover()<CR>", {noremap = true, silent = false})
map("v", "<Leader>dhv", ":lua require('dap.ui.variables').visual_hover()<CR>", {noremap = true, silent = false})

map("n", "<Leader>duh", ":lua require('dap.ui.widgets').hover()<CR>", {noremap = true, silent = false})
map("n", "<Leader>duf", ":lua local widgets=require('dap.ui.widgets');widgets.centered_float(widgets.scopes)<CR>", {noremap = true, silent = false})

map("n", "<Leader>dro", ":lua require('dap').repl.open()<CR>", {noremap = true, silent = false})
map("n", "<Leader>drl", ":lua require('dap').repl.run_last()<CR>" , {noremap = true, silent = false})

map("n", "<Leader>dbc", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>" , {noremap = true, silent = false})
map("n", "<Leader>dbm", ":lua require('dap').set_breakpoint({ nil, nil, vim.fn.input('Log point message: ') })<CR>", {noremap = true, silent = false})
map("n", "<Leader>dbt", ":lua require('dap').toggle_breakpoint()<CR>" , {noremap = true, silent = false})

map("n", "<Leader>dc", ":lua require('dap.ui.variables').scopes()<CR>" , {noremap = true, silent = false})
map("n", "<Leader>di", ":lua require('dapui').toggle()<CR>" , {noremap = true, silent = false})
