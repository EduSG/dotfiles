local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)
local LazyVim = require("lazy")

require("lazy").setup({
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = false,
		priority = 1001,
		opts = {},
	},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1001 },
	"nvim-lualine/lualine.nvim",
	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons",
	"ayu-theme/ayu-vim",
	{
		"nvim-telescope/telescope.nvim",
		tag = "1.1.4",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	"andweeb/presence.nvim",
	"williamboman/mason.nvim",
	"rebelot/kanagawa.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp", -- Corrigi o erro de digitação aqui
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-cmdline",
	{
		"vyfor/cord.nvim",
		build = "./build || .\\build",
		event = "VeryLazy",
		opts = {}, -- calls require('cord').setup()
	},
	"L3MON4D3/LuaSnip", -- Corrigi o erro de digitação aqui
	"saadparwaiz1/cmp_luasnip", -- Corrigi o erro de digitação aqui
	"akinsho/bufferline.nvim",
	{
		"luckasRanarison/tailwind-tools.nvim",
		name = "tailwind-tools",
		build = ":UpdateRemotePlugins",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-telescope/telescope.nvim", -- optional
			"neovim/nvim-lspconfig", -- optional
		},
		opts = {}, -- your configuration
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	"MunifTanjim/nui.nvim",
	"VonHeikemen/fine-cmdline.nvim",
	{
		"roobert/tailwindcss-colorizer-cmp.nvim",
		-- optionally, override the default options:
		config = function()
			require("tailwindcss-colorizer-cmp").setup({
				color_square_width = 2,
			})
		end,
	},
	"akinsho/toggleterm.nvim",
	"nvimdev/dashboard-nvim",
	"MaximilianLloyd/ascii.nvim",
	{
		"rcarriga/nvim-notify",
		config = function()
			require("notify").setup({
				stages = "fade_in_slide_out",
				background_colour = "FloatShadow",
				timeout = 3001,
			})
			vim.notify = require("notify")
		end,
	},
	"kdheepak/lazygit.nvim",
	"nvim-lua/plenary.nvim",
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	{ "ellisonleao/gruvbox.nvim", priority = 1001, config = true, opts = ... },
	"nvim-treesitter/nvim-treesitter",
	{
		"toppair/peek.nvim",
		build = "deno task --quiet build:fast",
		keys = {
			{
				"<Space>p",
				function()
					local peek = require("peek")
					if peek.is_open() then
						peek.close()
					else
						peek.open()
					end
				end,
				desc = "Peek (Markdown Preview)",
			},
		},
		opts = { theme = "dark", app = "webview" }, -- Substitua "firefox" pelo seu navegador preferido
	},
	{
		"kdheepak/lazygit.nvim",
		lazy = true,
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
		},
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		-- setting the keybinding for LazyGit with 'keys' is recommended in
		-- order to load the plugin when the command is run for the first time
		keys = {
			{ "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
		},
	},
	"stevearc/conform.nvim",
	"tjdevries/colorbuddy.nvim",
	"svrana/neosolarized.nvim",
	"mg979/vim-visual-multi",
	"ellisonleao/dotenv.nvim",
	"IogaMaster/neocord",
	{
		"tiagovla/tokyodark.nvim",
		opts = {
			-- custom options here
		},
		config = function(_, opts)
			require("tokyodark").setup(opts) -- calling setup is optional
			vim.cmd([[colorscheme tokyodark]])
		end,
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && npm install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},
})
