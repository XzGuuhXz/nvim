return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup {
      options = {
        mode = "buffers",
        themable = true,
        numbers = "ordinal",
        indicator = {
          icon = '▎',
          style = 'icon',
        },
        buffer_close_icon = '󰅖',
        modified_icon = '󰏫',
        close_icon = '󰅙',
        left_trunc_marker = '󰅍',
        right_trunc_marker = '󰅌',
        diagnostics = "nvim_lsp",
        separator_style = "slant",
        offsets = {
          {
            filetype = "NvimTree",
            text = "󰉖 File Explorer",
            text_align = "center",
            separator = true
          }
        },
      },
    }
    
    -- Keymaps
    vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { silent = true, desc = '󰒺 Next buffer' })
    vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { silent = true, desc = '󰒻 Previous buffer' })
    vim.keymap.set('n', '<leader>x', ':bdelete<CR>', { desc = '󰅙 Close buffer' })
  end
}
