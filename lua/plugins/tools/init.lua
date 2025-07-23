return {



  {


    "nvim-telescope/telescope.nvim",


    dependencies = { "nvim-lua/plenary.nvim" },


    config = function()


      require("telescope").setup({


        defaults = {


          mappings = {


            i = {


              ["<C-h>"] = "which_key"


            }


          }


        }


      })


      


      local builtin = require('telescope.builtin')


      vim.keymap.set('n', '<leader>pf', builtin.find_files, {})


      vim.keymap.set('n', '<C-p>', builtin.git_files, {})


      vim.keymap.set('n', '<leader>ps', function()


        builtin.grep_string({ search = vim.fn.input("Grep > ") })


      end)


      vim.keymap.set('n', '<leader>pb', builtin.buffers, {})


    end


  },


  {


    "nvim-treesitter/nvim-treesitter",


    build = ":TSUpdate",


    config = function()


      require("nvim-treesitter.configs").setup({


        ensure_installed = {


          "lua", "vim", "vimdoc", "query",


          "python", "javascript", "typescript",


          "html", "css", "json", "yaml",


          "bash", "markdown", "c", "cpp"


        },


        sync_install = false,


        auto_install = true,


        highlight = {


          enable = true,


          additional_vim_regex_highlighting = false,


        },


        indent = {


          enable = true


        }


      })


    end


  }


}
