local db = require("dashboard")

local header = {
    "                                       ",
    "██╗     ██╗███╗   ███╗ █████╗  ██████╗ ",
    "██║     ██║████╗ ████║██╔══██╗██╔═══██╗",
    "██║     ██║██╔████╔██║███████║██║   ██║",
    "██║     ██║██║╚██╔╝██║██╔══██║██║   ██║",
    "███████╗██║██║ ╚═╝ ██║██║  ██║╚██████╔╝",
    "╚══════╝╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝ "
}

db.setup({
    theme = 'doom',
    config = {
      header = header, --your header
      center = {
        { action = 'edit /home/ed/.config/nvim',
          desc = " Config",
          icon = " ", 
          key = "c" 
        },
        {
          desc = "Procurar Arquivo",
          key = 's',
          action = 'Telescope fd',
        },
        {
          icon = ' ',
          icon_hl = 'Title',
          desc = 'Find File           ',
          desc_hl = 'String',
          key = 'b',
          keymap = 'SPC f f',
          key_hl = 'Number',
          key_format = ' %s', -- remove default surrounding `[]`
          action = 'lua print(2)'
        },
        {
          icon = ' ',
          desc = 'Find Dotfiles',
          key = 'f',
          keymap = 'SPC f d',
          key_format = ' %s', -- remove default surrounding `[]`
          action = 'lua print(3)'
        },
      },
      footer = {'私を吸ってください。'}  --your footer
    }
  })
