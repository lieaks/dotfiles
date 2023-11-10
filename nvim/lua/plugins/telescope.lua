return {
  {
    "telescope.nvim",
    opts = {
      defaults = {
        -- https://www.reddit.com/r/neovim/comments/r22xrq/comment/hm2dv20/
        layout_strategy = "vertical",
        layout_config = {
          height = 0.95,
          -- prompt_position = "top",
          -- mirror = true,
          -- width = 0.95,

          -- preview_width = 0.65,
          -- https://www.reddit.com/r/neovim/comments/yrqm9f/comment/ivv8hoa/
          -- width = function(_, cols, _)
          --   if cols > 200 then
          --     return 170
          --   else
          --     return math.floor(cols * 0.87)
          --   end
          -- end,
        },
      },
    },
  },
}
-- return {
--   "nvim-telescope/telescope.nvim",
--   -- or                              , branch = '0.1.x',
--   dependencies = { "nvim-lua/plenary.nvim" },
--   opts = {
--     defaults = {
--       layout_config = {
--         width = 0.85,
--         preview_cutoff = 120,
--         horizontal = {
--           preview_width = function(_, cols, _)
--             if cols < 120 then
--               return math.floor(cols * 0.5)
--             end
--             return math.floor(cols * 0.6)
--           end,
--           mirror = false,
--         },
--         vertical = { mirror = false },
--       },
--       vimgrep_arguments = {
--         "rg",
--         "--color=never",
--         "--no-heading",
--         "--with-filename",
--         "--line-number",
--         "--column",
--         "--smart-case",
--         "--hidden",
--       },
--       file_ignore_patterns = {
--         "node_modules/",
--         "%.git/",
--         "%.DS_Store$",
--         "target/",
--         "build/",
--         "%.o$",
--       },
--       winblend = 0,
--       border = {},
--       borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
--       color_devicons = true,
--       set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
--     },
--     pickers = {
--       find_files = { hidden = true },
--       live_grep = {
--         -- @usage don't include the filename in the search results
--         only_sort_text = true,
--       },
--     },
--     extensions = {
--       fzf = {
--         fuzzy = true, -- false will only do exact matching
--         override_generic_sorter = true, -- override the generic sorter
--         override_file_sorter = true, -- override the file sorter
--         case_mode = "smart_case", -- or "ignore_case" or "respect_case"
--       },
--     },
--   },
-- }
