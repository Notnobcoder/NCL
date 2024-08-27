return {
  {
    "simrat39/symbols-outline.nvim",
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    cmd = "SymbolsOutline",
    opts = {
      position = "right",
    },
  },
  {
    "napmn/react-extract.nvim",
  },
  {
    "lewis6991/gitsigns.nvim",
  },
  {
    "yuratomo/w3m.vim",
  },
  {
    "tpope/vim-dadbod",
    dependencies = {
      "kristijanhusak/vim-dadbod-ui",
      "kristijanhusak/vim-dadbod-completion",
    },
    opts = {
      db_competion = function()
        ---@diagnostic disable-next-line
        require("cmp").setup.buffer({ sources = { { name = "vim-dadbod-completion" } } })
      end,
    },
    config = function(_, opts)
      vim.g.db_ui_save_location = vim.fn.stdpath("config") .. require("plenary.path").path.sep .. "db_ui"

      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "sql",
        },
        command = [[setlocal omnifunc=vim_dadbod_completion#omni]],
      })

      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "sql",
          "mysql",
          "plsql",
          "mongodb",
        },
        callback = function()
          vim.schedule(opts.db_completion)
        end,
      })
    end,
    keys = {
      { "<leader>td", "<cmd>DBUIToggle<cr>", desc = "Toggle UI" },
      { "<leader>tf", "<cmd>DBUIFindBuffer<cr>", desc = "Find Buffer" },
      { "<leader>tr", "<cmd>DBUIRenameBuffer<cr>", desc = "Rename Buffer" },
      { "<leader>tq", "<cmd>DBUILastQueryInfo<cr>", desc = "Last Query Info" },
    },
  },
}
