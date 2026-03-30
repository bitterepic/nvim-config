local lspconfig = require("lspconfig")

return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.diagnostics.virtual_text = false
    -- opts.diagnostics.virtual_lines = { current_line = true, }
    opts.inlay_hints = { enabled = false }

    -- opts.servers.rubocop = {
    --   -- See: https://docs.rubocop.org/rubocop/usage/lsp.html
    --   cmd = { "bundle", "exec", "rubocop", "--lsp" },
    --   filetypes = { "ruby" },
    --   root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
    -- }

    --opts.servers.ruby_lsp = {
    --  cmd = { "bundle", "exec", "ruby-lsp" },
    --  filetypes = { "ruby" },
    --  root_dir = require("lspconfig").util.root_pattern("Gemfile", ".git"),
    --  init_options = {
    --    linters = {},
    --    enabledFeatures = { diagnostics = false },
    --  },
    --}

    --return opts
  end,
}
