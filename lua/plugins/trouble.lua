-- return {
--   {
--     "folke/trouble.nvim",
--     -- opts will be merged with the parent spec
--     opts = {
--       modes = {
--         loclist = {
--           auto_close = true, -- auto close when there are no items
--           auto_open = true, -- auto open when there are items
--           auto_refresh = true, -- auto refresh when open
--         },
--       },
--     },
--   },
-- }

return {
  "folke/trouble.nvim",
  opts = function(_, opts)
    local modes = opts.modes

    modes.diagnostics = {
      auto_close = true, -- auto close when there are no items
      auto_open = true, -- auto open when there are items
      auto_refresh = true, -- auto refresh when open
    }

    return opts
  end,
}
