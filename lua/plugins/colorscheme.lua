return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      style = "night",
    },
  },
  {
    "kdheepak/monochrome.nvim",
  },
  -- lazy
  {
    "askfiy/visual_studio_code",
    priority = 100,
    config = function()
      vim.cmd([[colorscheme visual_studio_code]])
    end,
  },
  {
    "ldelossa/vimdark",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monochrome",
    },
  },
}
