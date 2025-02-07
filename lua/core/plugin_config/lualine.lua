require('lualine').setup {
    options = {
      icons_enabled = true,
      theme = 'tokyodark',
    },
    sections = {
      lualine_a = {
        {
          'filename',
          path = 1,
        }
      }
    }
  }
