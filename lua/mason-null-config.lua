require("mason-null-ls").setup({
    ensure_installed = { 'cspell', 'prettierd' },
    automatic_setup = true,
})

local null_ls = require("null-ls")

-- register any number of sources simultaneously
local sources = {
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.diagnostics.write_good,
    null_ls.builtins.diagnostics.cspell, 
    null_ls.builtins.code_actions.cspell,
    null_ls.builtins.formatting.prettierd.with { filetypes = { "html", "css", "markdown", "javascript", "js", "ts", "typescript" } },
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local on_attach = function(client, bufnr)
  if client.supports_method "textDocument/formatting" then
    vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
        vim.lsp.buf.formatting_sync()
        end,
    })
  end
end

null_ls.setup({ sources = sources, on_attachched = on_attached })

require 'mason-null-ls'.setup_handlers() -- If `automatic_setup` is true.
