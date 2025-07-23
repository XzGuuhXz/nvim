return {
  -- Lualine com configuração mais avançada e espaçamento nos ícones
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local colors = {
        bg = '#1a1b26',
        fg = '#c0caf5',
        yellow = '#e0af68',
        cyan = '#7dcfff',
        darkblue = '#081633',
        green = '#9ece6a',
        orange = '#ff9e64',
        violet = '#a9a1e1',
        magenta = '#c678dd',
        blue = '#7aa2f7',
        red = '#f7768e'
      }
      local mode_icons = {
        n = '󰋜', i = '󰏫', v = '󰈈', V = '󰈈', c = '󰘳', no = '󰋜',
        s = '󰒅', S = '󰒅', ic = '󰏫', R = '󰑎', Rv = '󰑎', cv = '󰘳',
        ce = '󰘳', r = '󰌍', rm = '󰌍', ['r?'] = '󰌍', ['!'] = '󰞷', t = '󰆍'
      }
      require('lualine').setup({
        options = {
          theme = 'tokyonight',
          component_separators = { left = '', right = '' },
          section_separators = { left = ' 󰊠', right = '' },
          globalstatus = true,
          refresh = {
            statusline = 1000,
          },
        },
        sections = {
          lualine_a = {
            {
              'mode',
              fmt = function(str)
                local icon = mode_icons[vim.fn.mode()] or '󰋜'
                return ' ' .. icon .. ' ' .. str:sub(1, 1) .. ' '
              end,
              color = function()
                return { bg = colors[vim.fn.mode()] or colors.blue, fg = colors.bg, gui = 'bold' }
              end,
            }
          },
          lualine_b = {
            {
              'branch',
              icon = '󰊢',
              color = { fg = colors.violet, gui = 'bold' },
            },
            {
              'diff',
              symbols = { added = ' 󰐕 ', modified = ' 󰏬 ', removed = ' 󰍵 ' },
              diff_color = {
                added = { fg = colors.green },
                modified = { fg = colors.orange },
                removed = { fg = colors.red },
              },
            },
            {
              'diagnostics',
              sources = { 'nvim_lsp' },
              symbols = { error = ' 󰅚 ', warn = ' 󰀪 ', info = ' 󰋽 ', hint = ' 󰌶 ' },
              diagnostics_color = {
                error = { fg = colors.red },
                warn = { fg = colors.yellow },
                info = { fg = colors.cyan },
                hint = { fg = colors.blue },
              },
              -- IMPORTANTE: Evitar duplicação de diagnósticos
              update_in_insert = false,
            }
          },
          lualine_c = {
            {
              'filename',
              file_status = true,
              path = 1,
              symbols = {
                modified = ' 󰏫 ',
                readonly = ' 󰌾 ',
                unnamed = '󰡯 [Sem nome]',
              }
            }
          },
          lualine_x = {
            {
              'encoding',
              fmt = function(enc) return '󰉿 ' .. enc:upper() .. '' end,
              color = { fg = colors.green, gui = 'bold' },
            },
            {
              'fileformat',
              symbols = {
                unix = '󰌽',
                dos = '󰍲',
                mac = '󰀵',
              },
            },
            {
              'filetype',
              icon_only = false,
              icon = { align = 'left' },
              fmt = function(str)
                return ' ' .. str .. ' '
              end,
            }
          },
          lualine_y = {
            {
              'progress',
              icon = ' 󰉿 ',
              color = { fg = colors.fg, gui = 'bold' },
              fmt = function(str)
                return str .. ''
              end,
            }
          },
          lualine_z = {
            {
              'location',
              icon = '󰍉',
              color = { fg = colors.bg, bg = colors.blue, gui = 'bold' },
              fmt = function(str)
                return str .. ''
              end,
            }
          }
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {'filename'},
          lualine_x = {'location'},
          lualine_y = {},
          lualine_z = {}
        },
        extensions = { 'nvim-tree', 'toggleterm' }
      })
    end
  },
  -- Tema TokyoNight
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night",
        light_style = "day",
        transparent = false,
        terminal_colors = true,
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          functions = { bold = true },
          variables = {},
          sidebars = "dark",
          floats = "dark",
        },
        sidebars = { "qf", "help", "vista_kind", "terminal", "packer" },
        day_brightness = 0.3,
        hide_inactive_statusline = false,
        dim_inactive = false,
        lualine_bold = false,
        on_colors = function(colors)
          colors.hint = colors.orange
          colors.error = "#ff0000"
        end,
        on_highlights = function(highlights, colors)
          highlights.LineNr = {
            fg = colors.orange,
          }
          highlights.CursorLineNr = {
            fg = colors.yellow,
            bold = true,
          }
        end,
      })
      vim.cmd.colorscheme("tokyonight")
    end
  },
  -- NvimTree com ícones visuais
  {
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
      vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = '󰉖 Toggle file explorer' })
      vim.keymap.set('n', '<leader>o', ':NvimTreeFocus<CR>', { desc = '󰋖 Focus file explorer' })
      vim.keymap.set('n', '<leader>f', ':NvimTreeFindFile<CR>', { desc = '󰈞 Find file in explorer' })
    end,
  },
  -- Telescope com ícones
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('telescope').setup {
        defaults = {
          prompt_prefix = " 󰍉 ",
          selection_caret = " 󰅂 ",
          path_display = { "truncate" },
          sorting_strategy = "ascending",
          layout_config = {
            horizontal = {
              prompt_position = "top",
              preview_width = 0.55,
              results_width = 0.8,
            },
            vertical = { mirror = false },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
          },
        },
      }
      vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = '󰈞 Find files' })
      vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = '󰍉 Live grep' })
      vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = '󰈚 List buffers' })
      vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = '󰋖 Help' })
    end
  },
  -- Bufferline com ícones
  {
    'akinsho/bufferline.nvim',
    version = "",
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
      vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { silent = true, desc = '󰒺 Next buffer' })
      vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { silent = true, desc = '󰒻 Previous buffer' })
      vim.keymap.set('n', '<leader>x', ':bdelete<CR>', { desc = '󰅙 Close buffer' })
    end
  },
  -- Indentação visual
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      require("ibl").setup {
        indent = {
          char = "│",
          tab_char = "│",
        },
        scope = {
          enabled = false,
        },
        exclude = {
          filetypes = {
            "help", "dashboard", "neo-tree", "lazy", "mason", "notify", "toggleterm"
          },
        },
      }
    end,
  },
  -- Color Highlight
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup {
        filetypes = { "" },
        user_default_options = {
          RGB = true,
          RRGGBB = true,
          names = true,
          mode = "background",
          AARRGGBB = true,
          virtualtext = "■",
        },
        buftypes = {},
      }
    end
  },
  -- Which-key para mostrar atalhos com ícones
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    config = function()
      local wk = require("which-key")
      wk.setup({
        icons = {
          breadcrumb = "󰅂",
          separator = "󰘔",
          group = "󰉋",
        },
      })
      -- Registrar grupos de teclas com ícones
      wk.register({
        ["<leader>f"] = { name = "󰈞 Find" },
        ["<leader>g"] = { name = "󰊢 Git" },
        ["<leader>l"] = { name = "󰌘 LSP" },
        ["<leader>t"] = { name = "󰆍 Terminal" },
        ["<leader>w"] = { name = "󰖲 Window" },
        ["<leader>b"] = { name = "󰈚 Buffer" },
        ["<leader>d"] = { name = "󰃤 Debug" },
        ["<leader>s"] = { name = "󰛔 Session" },
      })
    end,
  },
  -- Neotree alternativo com mais ícones
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
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
  },
  -- Lsp-kind para ícones de completion
  {
    "onsails/lspkind.nvim",
    config = function()
      require('lspkind').init({
        mode = 'symbol_text',
        preset = 'codicons',
        symbol_map = {
          Text = "󰉿",
          Method = "󰆧",
          Function = "󰊕",
          Constructor = "󰒪",
          Field = "󰜢",
          Variable = "󰀫",
          Class = "󰠱",
          Interface = "󰜰",
          Module = "󰏗",
          Property = "󰜢",
          Unit = "󰑭",
          Value = "󰎠",
          Enum = "󰒻",
          Keyword = "󰌋",
          Snippet = "󰀱",
          Color = "󰏘",
          File = "󰈚",
          Reference = "󰈇",
          Folder = "󰉋",
          EnumMember = "󰕘",
          Constant = "󰏿",
          Struct = "󰙅",
          Event = "󰉁",
          Operator = "󰆕",
          TypeParameter = "󰊄",
        },
      })
    end
  },
  -- Alpha dashboard com ícones
  {
    "goolord/alpha-nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")
      dashboard.section.header.val = {
        "                                                     ",
        "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
        "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
        "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
        "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
        "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
        "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
        "                                                     ",
      }
      dashboard.section.buttons.val = {
        dashboard.button("f", "󰈞  Find file", ":Telescope find_files <CR>"),
        dashboard.button("e", "󰉖  New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("r", "󰄉  Recently used files", ":Telescope oldfiles <CR>"),
        dashboard.button("t", "󰊢  Find text", ":Telescope live_grep <CR>"),
        dashboard.button("c", "󰒓  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
        dashboard.button("q", "󰗼  Quit Neovim", ":qa<CR>"),
      }
      alpha.setup(dashboard.opts)
    end,
  },
  -- Trouble para diagnósticos com ícones
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      icons = {
        error = "󰅚",
        warning = "󰀪",
        hint = "󰌶",
        information = "󰋽",
        other = "󰠱"
      },
    },
    cmd = "Trouble",
    keys = {
      { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "󰒡 Diagnostics (Trouble)" },
      { "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "󰒡 Buffer Diagnostics (Trouble)" },
      { "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "󰘦 Symbols (Trouble)" },
      { "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", desc = "󰌘 LSP Definitions / references / ... (Trouble)" },
      { "<leader>xL", "<cmd>Trouble loclist toggle<cr>", desc = "󰂖 Location List (Trouble)" },
      { "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", desc = "󰂖 Quickfix List (Trouble)" },
    },
  },
  -- Gitsigns com ícones
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require('gitsigns').setup {
        signs = {
          add          = { text = '│' },
          change       = { text = '│' },
          delete       = { text = '_' },
          topdelete    = { text = '‾' },
          changedelete = { text = '~' },
          untracked    = { text = '┆' },
        },
        signcolumn = true,
        numhl      = false,
        linehl     = false,
        word_diff  = false,
        watch_gitdir = {
          follow_files = true
        },
        attach_to_untracked = true,
        current_line_blame = false,
        current_line_blame_opts = {
          virt_text = true,
          virt_text_pos = 'eol',
          delay = 1000,
          ignore_whitespace = false,
        },
        current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
        sign_priority = 6,
        update_debounce = 100,
        status_formatter = nil,
        max_file_length = 40000,
        preview_config = {
          border = 'single',
          style = 'minimal',
          relative = 'cursor',
          row = 0,
          col = 1
        },
        on_attach = function(bufnr)
          local gs = package.loaded.gitsigns
          local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
          end
          -- Navigation
          map('n', ']c', function()
            if vim.wo.diff then return ']c' end
            vim.schedule(function() gs.next_hunk() end)
            return '<Ignore>'
          end, {expr=true, desc = "󰊢 Next Git hunk"})
          map('n', '[c', function()
            if vim.wo.diff then return '[c' end
            vim.schedule(function() gs.prev_hunk() end)
            return '<Ignore>'
          end, {expr=true, desc = "󰊢 Previous Git hunk"})
          -- Actions
          map('n', '<leader>hs', gs.stage_hunk, {desc = "󰐕 Stage hunk"})
          map('n', '<leader>hr', gs.reset_hunk, {desc = "󰦒 Reset hunk"})
          map('v', '<leader>hs', function() gs.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end, {desc = "󰐕 Stage hunk"})
          map('v', '<leader>hr', function() gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end, {desc = "󰦒 Reset hunk"})
          map('n', '<leader>hS', gs.stage_buffer, {desc = "󰐕 Stage buffer"})
          map('n', '<leader>hu', gs.undo_stage_hunk, {desc = "󰦒 Undo stage hunk"})
          map('n', '<leader>hR', gs.reset_buffer, {desc = "󰦒 Reset buffer"}) 
          map('n', '<leader>hp', gs.preview_hunk, {desc = "󰋖 Preview hunk"})
          map('n', '<leader>hb', function() gs.blame_line{full=true} end, {desc = "󰊢 Blame line"})
          map('n', '<leader>tb', gs.toggle_current_line_blame, {desc = "󰊢 Toggle line blame"})
          map('n', '<leader>hd', gs.diffthis, {desc = "󰦒 Diff this"})
          map('n', '<leader>hD', function() gs.diffthis('~') end, {desc = "󰦒 Diff this ~"})
          map('n', '<leader>td', gs.toggle_deleted, {desc = "󰍵 Toggle deleted"})
          -- Text object
          map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>', {desc = "󰊢 Select hunk"})
        end
      }
    end
  },
}
