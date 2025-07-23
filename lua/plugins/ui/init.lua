return {



  -- Lualine com configuração mais avançada


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


        n = '', i = '', v = '󰈈', V = '󰈈', c = '', no = '',


        s = '', S = '', ic = '', R = '󰑎', Rv = '󰑎', cv = '',


        ce = '', r = '', rm = '', ['r?'] = '', ['!'] = '', t = ''


      }





      require('lualine').setup({


        options = {


          theme = 'tokyonight',


          component_separators = { left = '', right = '' },


          section_separators = { left = '', right = '' },


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


                local icon = mode_icons[vim.fn.mode()] or ''


                return icon .. ' ' .. str:sub(1, 1)


              end,


              color = function()


                return { bg = colors[vim.fn.mode()] or colors.blue, fg = colors.bg, gui = 'bold' }


              end,


            }


          },


          lualine_b = {


            {


              'branch',


              icon = '',


              color = { fg = colors.violet, gui = 'bold' },


            },


            {


              'diff',


              symbols = { added = ' ', modified = ' ', removed = ' ' },


              diff_color = {


                added = { fg = colors.green },


                modified = { fg = colors.orange },


                removed = { fg = colors.red },


              },


            },


            {


              'diagnostics',


              sources = { 'nvim_lsp' },


              symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },


              diagnostics_color = {


                error = { fg = colors.red },


                warn = { fg = colors.yellow },


                info = { fg = colors.cyan },


                hint = { fg = colors.blue },


              },


            }


          },


          lualine_c = {


            {


              'filename',


              file_status = true,


              path = 1,


              symbols = {


                modified = '',


                readonly = '',


                unnamed = '[Sem nome]',


              }


            }


          },


          lualine_x = {


            {


              'encoding',


              fmt = function(enc) return ' ' .. enc:upper() end,


              color = { fg = colors.green, gui = 'bold' },


            },


            {


              'fileformat',


              symbols = {


                unix = '',


                dos = '',


                mac = '',


              },


            },


            {


              'filetype',


              icon_only = false,


              icon = { align = 'left' },


            }


          },


          lualine_y = {


            {


              'progress',


              icon = '',


              color = { fg = colors.fg, gui = 'bold' },


            }


          },


          lualine_z = {


            {


              'location',


              icon = '',


              color = { fg = colors.bg, bg = colors.blue, gui = 'bold' },


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


              default = "",


              symlink = "",


              folder = {


                arrow_closed = "",


                arrow_open = "",


                default = "",


                open = "",


                empty = "",


                empty_open = "",


                symlink = "",


                symlink_open = "",


              },


              git = {


                unstaged = "✗",


                staged = "✓",


                unmerged = "",


                renamed = "➜",


                untracked = "★",


                deleted = "",


                ignored = "◌",


              },


            },


          },


        },


      })





      vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = ' Toggle file explorer' })


      vim.keymap.set('n', '<leader>o', ':NvimTreeFocus<CR>', { desc = ' Focus file explorer' })


      vim.keymap.set('n', '<leader>f', ':NvimTreeFindFile<CR>', { desc = ' Find file in explorer' })


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


          prompt_prefix = " ",


          selection_caret = " ",


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


      vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = ' Help' })


    end


  },





  -- Bufferline com ícones


  {


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


          buffer_close_icon = '',


          modified_icon = '●',


          close_icon = '',


          left_trunc_marker = '',


          right_trunc_marker = '',


          diagnostics = "nvim_lsp",


          separator_style = "slant",


          offsets = {


            {


              filetype = "NvimTree",


              text = " File Explorer",


              text_align = "center",


              separator = true


            }


          },


        },


      }





      vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { silent = true, desc = '󰒺 Next buffer' })


      vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { silent = true, desc = '󰒻 Previous buffer' })


      vim.keymap.set('n', '<leader>x', ':bdelete<CR>', { desc = ' Close buffer' })


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





  -- Auto pairs


  {


    "windwp/nvim-autopairs",


    event = "InsertEnter",


    config = function()


      require("nvim-autopairs").setup {}


    end


  },





  -- Comment toggle


  {


    "numToStr/Comment.nvim",


    config = function()


      require("Comment").setup()


    end


  },





  -- Color Highlight


  {


    "NvChad/nvim-colorizer.lua",


    config = function()


      require("colorizer").setup {


        filetypes = { "*" },


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


}
