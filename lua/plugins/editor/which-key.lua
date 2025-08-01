return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    local wk = require("which-key")
    
    wk.setup({
      preset = "modern", -- ou "classic"
      delay = 200,
      expand = 1,
      notify = true,
      icons = {
        breadcrumb = "󰅂",
        separator = "󰘔",
        group = "󰉋",
        mappings = true,
      },
    })

    -- Nova sintaxe para registrar grupos
    wk.add({
      { "<leader>f", group = "󰈞 Find" },
      { "<leader>g", group = "󰊢 Git" },
      { "<leader>l", group = "󰌘 LSP" },
      { "<leader>t", group = "󰆍 Terminal" },
      { "<leader>w", group = "󰖲 Window" },
      { "<leader>b", group = "󰈚 Buffer" },
      { "<leader>d", group = "󰃤 Debug" },
      { "<leader>s", group = "󰛔 Session" },
      { "<leader>n", group = "󰉖 NvimTree" },
    })

    -- Registrar keymaps individuais também (opcional, mas recomendado)
    wk.add({
      { "<leader>pv", vim.cmd.Ex, desc = "Open netrw" },
      { "<leader>q", ":q<CR>", desc = "Quit" },
      -- Note: <leader>w já está sendo usado como grupo, então vamos mover o save
      { "<leader>fs", ":w<CR>", desc = "Save file" }, -- Movido para <leader>fs
      
      -- Navegação entre janelas
      { "<C-h>", "<C-w>h", desc = "Move to left window" },
      { "<C-j>", "<C-w>j", desc = "Move to bottom window" },
      { "<C-k>", "<C-w>k", desc = "Move to top window" },
      { "<C-l>", "<C-w>l", desc = "Move to right window" },
      
      -- Mover linhas no modo visual
      { "J", ":m '>+1<CR>gv=gv", desc = "Move line down", mode = "v" },
      { "K", ":m '<-2<CR>gv=gv", desc = "Move line up", mode = "v" },
      
      -- Melhor experiência de indentação
      { "<", "<gv", desc = "Indent left", mode = "v" },
      { ">", ">gv", desc = "Indent right", mode = "v" },
      
      -- Centralizar cursor em buscas
      { "n", "nzzzv", desc = "Next search result" },
      { "N", "Nzzzv", desc = "Previous search result" },
    })
  end,
}