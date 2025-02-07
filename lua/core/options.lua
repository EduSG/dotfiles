vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.cmd [[highlight Normal cterm=NONE ctermbg=NONE ctermfg=NONE]]
-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.cmd [[
  au BufRead,BufNewFile .env set filetype=sh
]]
vim.cmd [[ set noswapfile ]]
vim.cmd [[ set termguicolors ]]

--Line numbers
vim.wo.number = true    


-- Function to highlight the word under the cursor
function HighlightWordUnderCursor()
    local line = vim.fn.getline('.')
    local col = vim.fn.col('.') - 1
    local char = line:sub(col, col)
    
    if not char:match('[%p%s]') then
        local word = vim.fn.expand('<cword>')
        vim.cmd('match Search /\\V\\<' .. word .. '\\>/')
    else
        vim.cmd('match none')
    end
end

-- Set up autocmd to call the function on CursorHold and CursorHoldI events
vim.api.nvim_create_autocmd({'CursorHold', 'CursorHoldI'}, {
    pattern = '*',
    callback = HighlightWordUnderCursor,
})

-- Configuração para o vim-visual-multi
vim.g.VM_maps = {
    ['Find Under'] = '<C-d>',
    ['Find Subword Under'] = '<C-d>',
}

-- Adicionar o keymap para o modo insert
vim.api.nvim_set_keymap('i', '<C-d>', '<Esc><C-d>i', { noremap = true, silent = true })
