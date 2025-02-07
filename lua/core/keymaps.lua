local keymap = vim.keymap
local opts = { noremap = true, silent = true }  
vim.g.mapleader = ' '  -- Define <Space> como <leader>

vim.keymap.set('i', '<c-z>', '<Esc>ui')

--split window
keymap.set("n", "th", ":split<CR>")
keymap.set("n", "tv", ":vsplit<CR>")

-- Movimentação facilitada no modo normal
keymap.set("n", "<C-i>", "(")

--tabcontrol
keymap.set("n", "te", ":tabedit", opts)

-- -- Substituição
keymap.set('n', '<leader>r', [[:%s/\<<C-r><C-w>\>//g<Left><Left>]], opts)

-- Múltiplos cursores
vim.g.VM_default_mappings = 1
keymap.set('n', '<C-d>', '<Plug>(VM-Find-Under)', { noremap = false, silent = true })

--move window
keymap.set("n", "<C-left>", "<C-w><left>")
keymap.set("n", "<C-right>", "<C-w><right>")
keymap.set("n", "<C-up>", "<C-w><up>")
keymap.set("n", "<C-down>", "<C-w><down>")

--dimension window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")
vim.api.nvim_set_keymap('n', '<Space>f', '<cmd>lua require("conform").format()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})

vim.api.nvim_set_keymap('n', '<space>bn', ':Rest run<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>rp', '<Plug>RestNvimPreview', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>rl', '<Plug>RestNvimLast', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-q>', 'ggVG', { noremap = true, silent = true })
