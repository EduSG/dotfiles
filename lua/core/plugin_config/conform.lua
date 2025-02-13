require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- Conform will run multiple formatters sequentially
		python = { "isort", "black" },
		-- Use a sub-list to run only the first available formatter
		html = { { "prettier" } },
		css = { { "prettier" } },
    go = {{ "goimports" }},
		javascript = { { "prettierd", "prettier" } },
		typescript = { { "prettierd", "prettier" } },
    typescriptreact = { { "prettierd", "prettier" } },

	},
})
