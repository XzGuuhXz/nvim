return {



  -- Mason para gerenciar LSP servers


  {


    "williamboman/mason.nvim",


    dependencies = {


      "williamboman/mason-lspconfig.nvim",


    },


    config = function()


      require("mason").setup({


        ui = { 


          border = "rounded",


          icons = {


            package_installed = "✓",


            package_pending = "➜",


            package_uninstalled = "✗"


          }


        }


      })


      


      require("mason-lspconfig").setup({


        ensure_installed = { 


          "lua_ls", 


          "pyright", 


          "ts_ls",  -- CORRIGIDO: tsserver -> ts_ls


          "jsonls",


          "html",


          "cssls",


          "clangd"  -- C/C++ LSP


        },


        automatic_installation = true,


      })


    end


  },





  -- Autocompletion engine


  {


    "hrsh7th/nvim-cmp",


    dependencies = {


      "hrsh7th/cmp-nvim-lsp",


      "hrsh7th/cmp-buffer",


      "hrsh7th/cmp-path",


      "hrsh7th/cmp-cmdline",


      "L3MON4D3/LuaSnip",


      "saadparwaiz1/cmp_luasnip",


      "rafamadriz/friendly-snippets",


    },


    config = function()


      local cmp = require("cmp")


      local luasnip = require("luasnip")


      


      -- Carregar snippets


      require("luasnip.loaders.from_vscode").lazy_load()


      


      cmp.setup({


        snippet = {


          expand = function(args)


            luasnip.lsp_expand(args.body)


          end,


        },


        window = {


          completion = cmp.config.window.bordered(),


          documentation = cmp.config.window.bordered(),


        },


        mapping = cmp.mapping.preset.insert({


          ['<C-b>'] = cmp.mapping.scroll_docs(-4),


          ['<C-f>'] = cmp.mapping.scroll_docs(4),


          ['<C-Space>'] = cmp.mapping.complete(),


          ['<C-e>'] = cmp.mapping.abort(),


          ['<CR>'] = cmp.mapping.confirm({ select = true }),


          ['<Tab>'] = cmp.mapping(function(fallback)


            if cmp.visible() then


              cmp.select_next_item()


            elseif luasnip.expand_or_jumpable() then


              luasnip.expand_or_jump()


            else


              fallback()


            end


          end, { 'i', 's' }),


          ['<S-Tab>'] = cmp.mapping(function(fallback)


            if cmp.visible() then


              cmp.select_prev_item()


            elseif luasnip.jumpable(-1) then


              luasnip.jump(-1)


            else


              fallback()


            end


          end, { 'i', 's' }),


        }),


        sources = cmp.config.sources({


          { name = 'nvim_lsp' },


          { name = 'luasnip' },


        }, {


          { name = 'buffer' },


          { name = 'path' },


        })


      })


      


      -- Completion para command line


      cmp.setup.cmdline({ '/', '?' }, {


        mapping = cmp.mapping.preset.cmdline(),


        sources = {


          { name = 'buffer' }


        }


      })


      


      cmp.setup.cmdline(':', {


        mapping = cmp.mapping.preset.cmdline(),


        sources = cmp.config.sources({


          { name = 'path' }


        }, {


          { name = 'cmdline' }


        })


      })


    end


  },





  -- LSP Configuration


  {


    "neovim/nvim-lspconfig",


    dependencies = {


      "hrsh7th/cmp-nvim-lsp",


    },


    config = function()


      local capabilities = require('cmp_nvim_lsp').default_capabilities()


      


      -- Lua LSP configurado para Neovim


      require("lspconfig").lua_ls.setup({


        capabilities = capabilities,


        settings = {


          Lua = {


            runtime = {


              version = 'LuaJIT',


            },


            diagnostics = {


              globals = { "vim" },


            },


            workspace = {


              library = vim.api.nvim_get_runtime_file("", true),


              checkThirdParty = false,


            },


            telemetry = {


              enable = false,


            },


          },


        },


      })


      


      -- Python LSP


      require("lspconfig").pyright.setup({


        capabilities = capabilities,


      })


      


      -- TypeScript LSP - CORRIGIDO: tsserver -> ts_ls


      require("lspconfig").ts_ls.setup({


        capabilities = capabilities,


      })


      


      -- JSON LSP


      require("lspconfig").jsonls.setup({


        capabilities = capabilities,


      })


      


      -- HTML LSP


      require("lspconfig").html.setup({


        capabilities = capabilities,


      })


      


      -- CSS LSP


      require("lspconfig").cssls.setup({


        capabilities = capabilities,


      })


      


      -- C/C++ LSP (clangd)


      require("lspconfig").clangd.setup({


        capabilities = capabilities,


        cmd = { "clangd", "--background-index" },


        filetypes = { "c", "cpp", "objc", "objcpp" },


      })


      


      -- LSP Keymaps


      vim.api.nvim_create_autocmd('LspAttach', {


        group = vim.api.nvim_create_augroup('UserLspConfig', {}),


        callback = function(ev)


          local opts = { buffer = ev.buf }


          vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)


          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)


          vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)


          vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)


          vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)


          vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)


          vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)


          vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)


          vim.keymap.set('n', '<leader>f', function()


            vim.lsp.buf.format { async = true }


          end, opts)


        end,


      })


    end


  }


}
