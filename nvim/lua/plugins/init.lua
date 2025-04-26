return {

	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" }
	},

	-- LSP and Mason
	"neovim/nvim-lspconfig",
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		config = true
	},
	"williamboman/mason-lspconfig.nvim",

	-- Autocompletion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"L3MON4D3/LuaSnip",

  	-- Treesitter
	{
	  "nvim-treesitter/nvim-treesitter",
	  build = ":TSUpdate",
	  config = function()
		  require("nvim-treesitter.configs").setup({
			  ensure_installed = {
				  "python", "lua", "bash", "json", "yaml", "markdown", "html", "css"
			  },
			  highlight = { enable = true },
			  indent = { enable = true },
		  })
	  end,
  	},	

	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme tokyonight")
		end,
	},

}

