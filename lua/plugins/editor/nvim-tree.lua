return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    
    require("nvim-tree").setup({
      view = {
        width = 35,
        signcolumn = "yes",
      },
      renderer = {
        highlight_git = true,
        highlight_opened_files = "name",
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
          glyphs = {
            default = "󰈚",
            symlink = "󰌷",
            folder = {
              arrow_closed = "󰅂",
              arrow_open = "󰅀",
              default = "󰉋",
              open = "󰝰",
              empty = "󰉖",
              empty_open = "󰷏",
              symlink = "󰉒",
              symlink_open = "󰷑",
            },
            git = {
              unstaged = "󰄱",
              staged = "󰱒",
              unmerged = "󰘬",
              renamed = "󰁕",
              untracked = "󰻭",
              deleted = "󰍵",
              ignored = "󰋙",
            },
          },
        },
      },
    })
    
    -- Keymaps
    vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = '󰉖 Toggle file explorer' })
    vim.keymap.set('n', '<leader>o', ':NvimTreeFocus<CR>', { desc = '󰋖 Focus file explorer' })
    vim.keymap.set('n', '<leader>nf', ':NvimTreeFindFile<CR>', { desc = '󰈞 Find file in explorer' })
  end,
}
