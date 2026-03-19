return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.diagnostics.virtual_text = false
    opts.diagnostics.virtual_lines = { current_line = true, }
    return opts
  end,
}
