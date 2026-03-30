-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.diagnostic.config({ virtual_text = false })
vim.g.autoformat = false
--vim.g.lazyvim_ruby_lsp = "rubocop"
--vim.g.lazyvim_ruby_formatter = "rubocop"

vim.lsp.config("rubocop", {
  -- See: https://docs.rubocop.org/rubocop/usage/lsp.html
  cmd = { "bundle", "exec", "rubocop", "--lsp" },
  filetypes = { "ruby" },
  rootPatterns = { ".git", "Gemfile" },
})
vim.lsp.enable("rubocop")

vim.lsp.config("sorbet", {
  cmd_cwd = vim.fs.root(0, "Gemfile"),
  cmd = { "bundle", "exec", "srb", "tc", "--lsp" },
  filetypes = { "ruby" },
})
vim.lsp.enable("sorbet")
