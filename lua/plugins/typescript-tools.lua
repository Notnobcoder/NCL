return {
  -- {
  --   "pmizio/typescript-tools.nvim",
  --   dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  --   opts = {},
  -- },
  {
    "jose-elias-alvarez/typescript.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      disable_commands = false,
      debug = false,
      go_to_source_definition = {
        fallback = true,
      },
      server = { -- pass options to lspconfig's setup method
        on_attach = ...,
      },
    },
  },
}
