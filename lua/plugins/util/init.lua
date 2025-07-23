return {


  {


    "folke/which-key.nvim",


    event = "VeryLazy",


    config = function()


      require("which-key").setup({


        preset = "modern",


        win = { 


          border = "rounded",


          title = true,


          title_pos = "center",


        },


        layout = {


          height = { min = 4, max = 25 },


          width = { min = 20, max = 50 },


          spacing = 3,


        }


      })


      


      -- Registrar grupos de teclas usando nova sintaxe


      require("which-key").add({


        { "<leader>p", group = "telescope" },


        { "<leader>pf", desc = "Find files" },


        { "<leader>ps", desc = "Search text" },


        { "<leader>pb", desc = "Buffers" },


        


        { "<leader>c", group = "code" },


        { "<leader>ca", desc = "Code actions" },


        { "<leader>rn", desc = "Rename" },


        { "<leader>f", desc = "Format" },


        


        { "<leader>g", group = "git" },


        { "<leader>e", desc = "File explorer" },


        { "<leader>w", desc = "Save file" },


        { "<leader>q", desc = "Quit" },


        


        -- LSP mappings


        { "gd", desc = "Go to definition" },


        { "gD", desc = "Go to declaration" },


        { "gi", desc = "Go to implementation" },


        { "gr", desc = "Go to references" },


        { "K", desc = "Hover documentation" },


      })


    end


  },


  {


    "windwp/nvim-autopairs",


    event = "InsertEnter",


    config = function()


      require("nvim-autopairs").setup({})


      


      -- Integração com nvim-cmp


      local cmp_autopairs = require('nvim-autopairs.completion.cmp')


      local cmp = require('cmp')


      cmp.event:on(


        'confirm_done',


        cmp_autopairs.on_confirm_done()


      )


    end


  },


  {


    "numToStr/Comment.nvim",


    config = function()


      require('Comment').setup()


    end


  }


}
