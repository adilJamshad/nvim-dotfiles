local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "clangd", "lua_ls", "rust_analyzer", "tsserver"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
--
-- lspconfig.rust_analyzer.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   fileTypes = {"rust"},
--   root_dir = lspconfig.util.root_pattern("Cargo.toml")
-- })
--
-- lspconfig.tsserver.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   fileTypes = {"ts"},
-- })
