local M = {}

M.keyAttach = function(bufnr)
  ------ LSP
  -- Goto the definition of the word under the cursor, if there's only one, otherwise show all options in Telescope
  vim.keymap.set("n", "gd", require("telescope.builtin").lsp_definitions,
    { noremap = true, silent = true, buffer = bufnr, desc = "lsp_definitions" })
  -- Goto the implementation of the word under the cursor if there's only one, otherwise show all options in Telescope
  vim.keymap.set("n", "gi", require("telescope.builtin").lsp_implementations,
    { noremap = true, silent = true, buffer = bufnr, desc = "lsp_implementations"})
  -- Lists LSP references for word under the cursor
  vim.keymap.set("n", "gr",
    function()
      require("telescope.builtin").lsp_references(require("telescope.themes").get_ivy())
    end, { noremap = true, silent = true, buffer = bufnr, desc = "lsp_references"} )
  -- Displays hover information
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end,
    { noremap = true, silent = true, buffer = bufnr, desc = "lsp_hover"})
  -- Rename variable under the cursor
  vim.keymap.set("n", "<leader>ra", vim.lsp.buf.rename,
    { noremap = true, silent = true, buffer = bufnr, desc = "lsp_rename"})
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action,
    { noremap = true, silent = true, buffer = bufnr, desc = "lsp_code_action"})
  vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format({ async = true }) end,
    { noremap = true, silent = true, buffer = bufnr, desc = "lsp_buf_format" })
end

-- TODO
M.disableFormat = function(client)
  client.resolved_capabilities.document_formatting = false
  client.resolved_capabilities.document_range_formatting = false
end

M.capabilities = require("cmp_nvim_lsp").default_capabilities()

M.capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true,
}

M.flags = {
  debounce_text_changes = 150,
}

return M
