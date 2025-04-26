require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "pyright" }
})

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason-lspconfig").setup_handlers({
  function(server)
    lspconfig[server].setup({
      capabilities = capabilities
    })
  end
})

