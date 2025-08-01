return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  layz = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  cmd = "Neotree",
  keys = {
    { "<leader>ft", "<cmd>Neotree toggle<cr>", desc = "󰙅 NeoTree" },
  },
  deactivate = function()
    vim.cmd([[Neotree close]])
  end,
  init = function()
    if vim.fn.argc(-1) == 1 then
      local stat = vim.loop.fs_stat(vim.fn.argv(0))
      if stat and stat.type == "directory" then
        require("neo-tree")
      end
    end
  end,
  opts = {
    sources = { "filesystem", "buffers", "git_status", "document_symbols" },
    open_files_do_not_replace_types = { "terminal", "Trouble", "qf", "Outline" },
    filesystem = {
      bind_to_cwd = false,
      follow_current_file = { enabled = true },
      use_libuv_file_watcher = true,
    },
    window = {
      mappings = {
        ["<space>"] = "none",
      },
    },
    default_component_configs = {
      indent = {
        with_expanders = true,
        expander_collapsed = "󰅂",
        expander_expanded = "󰅀",
        expander_highlight = "NeoTreeExpander",
      },
      icon = {
        folder_closed = "󰉋",
        folder_open = "󰝰",
        folder_empty = "󰉖",
        default = "󰈚",
      },
      modified = {
        symbol = "󰏫",
      },
      git_status = {
        symbols = {
          added = "󰐕",
          modified = "󰏬",
          deleted = "󰍵",
          renamed = "󰁕",
          untracked = "󰻭",
          ignored = "󰋙",
          unstaged = "󰄱",
          staged = "󰱒",
          conflict = "󰘬",
        }
      },
    },
  },
}
