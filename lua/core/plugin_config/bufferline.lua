require("bufferline").setup{
    options = {
        mode = "buffers",
        show_buffer_close_icons = false,
        show_close_icon = false,
        separator_style = "slope",  -- descomentado se necessário
    }
}

-- Mapeamento das teclas
vim.api.nvim_set_keymap('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', { noremap = true, silent = true, desc = "Next tab" })
vim.api.nvim_set_keymap('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', { noremap = true, silent = true, desc = "Prev tab" })