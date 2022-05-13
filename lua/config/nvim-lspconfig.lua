-- LSP settings

require 'lspconfig'.terraform_lsp.setup {
  filetypes = { "terraform","tf" }
}
require'lspconfig'.tflint.setup{
  filetypes = { "terraform","tf" }
}

require 'lsp_signature'.setup({
  bind = true,
  handler_opts = {
    border = "rounded"
  }
})

local servers = { 'bashls', 'dockerls', 'gopls', 'jsonls', 'pylsp', 'yamlls' }
local lspconfig = require('lspconfig')
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup(require('coq').lsp_ensure_capabilities({}))
end

-- COQ settings

local g = vim.g

g.coq_settings = {
	auto_start = "shut-up",
	clients = {
		tmux = { enabled = false },
	},
	keymap = {
		manual_complete = "<C-c>",
	},
}
