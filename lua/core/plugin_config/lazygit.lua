require('lazy').setup(function(use)
    -- Adicione outros plugins aqui
  
    use {
      "kdheepak/lazygit.nvim",
      cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
      },
      dependencies = {
        "nvim-lua/plenary.nvim",
      },
      keys = {
        { "<leader>lg", "<cmd>LazyGit<cr>", desc = "Open lazy git" },
      },
    }
  
    -- Adicione outros plugins aqui
  end)