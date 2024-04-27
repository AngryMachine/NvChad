local common = require("custom.configs.lspconfig.common_config")

local options = {
  capabilities = common.capabilities,
  flags = common.flags,
  on_attach = function(_, bufnr)
    common.keyAttach(bufnr)
  end,
  settings = {
    -- to enable rust-analyzer settings visit:
    -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
    ["rust-analyzer"] = {
      -- enable clippy on save
      checkOnSave = {
        command = "clippy",
      },
    },
  },
}

require("rust-tools").setup({
  server = options,
})

-- vim.g.rustaceanvim = {
--   -- LSP configuration
--   server = options,
-- }
