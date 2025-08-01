return {
  "hrsh7th/nvim-cmp",
  lazy = false, -- Carrega imediatamente na inicialização
  dependencies = {
    -- Fontes de completion
    "hrsh7th/cmp-nvim-lsp",        -- LSP
    "hrsh7th/cmp-buffer",          -- Buffer atual
    "hrsh7th/cmp-path",            -- Caminhos de arquivos
    "hrsh7th/cmp-cmdline",         -- Linha de comando
    "hrsh7th/cmp-nvim-lsp-signature-help", -- Assinatura de funções
    
    -- Snippets
    "L3MON4D3/LuaSnip",            -- Engine de snippets
    "saadparwaiz1/cmp_luasnip",    -- Integração LuaSnip com cmp
    "rafamadriz/friendly-snippets", -- Coleção de snippets prontos
    
    -- Ícones
    "onsails/lspkind.nvim",        -- Ícones bonitos para os tipos
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    local lspkind = require("lspkind")
    
    -- Carrega snippets do friendly-snippets
    require("luasnip.loaders.from_vscode").lazy_load()
    
    -- Configuração principal do nvim-cmp
    cmp.setup({
      -- Engine de snippets
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      
      -- Janela de completion
      window = {
        completion = cmp.config.window.bordered({
          border = "rounded",
          winhighlight = "Normal:CmpPmenu,CursorLine:CmpSel,Search:None",
        }),
        documentation = cmp.config.window.bordered({
          border = "rounded",
          winhighlight = "Normal:CmpDoc",
        }),
      },
      
      -- Mapeamentos de teclas
      mapping = cmp.mapping.preset.insert({
        -- Navegação
        ["<C-k>"] = cmp.mapping.select_prev_item(), -- Anterior
        ["<C-j>"] = cmp.mapping.select_next_item(), -- Próximo
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),    -- Scroll documentação para cima
        ["<C-f>"] = cmp.mapping.scroll_docs(4),     -- Scroll documentação para baixo
        ["<C-Space>"] = cmp.mapping.complete(),     -- Mostrar completion manualmente
        ["<C-e>"] = cmp.mapping.abort(),            -- Fechar completion
        
        -- Confirmar seleção
        ["<CR>"] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = false, -- Só aceita se algo estiver explicitamente selecionado
        }),
        
        -- Tab para navegar e expandir snippets
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, { "i", "s" }),
        
        -- Shift+Tab para voltar
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
      }),
      
      -- Formatação dos itens (com ícones)
      formatting = {
        format = lspkind.cmp_format({
          mode = "symbol_text", -- Mostra ícone + texto
          maxwidth = 50,        -- Largura máxima
          ellipsis_char = "...", -- Truncar com ...
          
          -- Personalizar ícones por fonte
          before = function(entry, vim_item)
            -- Fonte do item
            vim_item.menu = ({
              nvim_lsp = "[LSP]",
              luasnip = "[Snippet]",
              buffer = "[Buffer]",
              path = "[Path]",
              cmdline = "[CMD]",
            })[entry.source.name]
            
            return vim_item
          end,
        }),
      },
      
      -- Fontes de completion (ordem de prioridade)
      sources = cmp.config.sources({
        { name = "nvim_lsp", priority = 1000 },                -- LSP (maior prioridade)
        { name = "luasnip", priority = 750 },                  -- Snippets
        { name = "nvim_lsp_signature_help", priority = 700 },  -- Assinatura de funções
      }, {
        { name = "buffer", priority = 500, keyword_length = 3 }, -- Buffer (min 3 chars)
        { name = "path", priority = 250 },                     -- Caminhos
      }),
      
      -- Configurações experimentais
      experimental = {
        ghost_text = true, -- Mostra preview do texto que será inserido
      },
      
      -- Configuração de performance
      performance = {
        debounce = 60,
        throttle = 30,
        fetching_timeout = 500,
        confirm_resolve_timeout = 80,
        async_budget = 1,
        max_view_entries = 200,
      },
    })
    
    -- Configuração específica para linha de comando
    cmp.setup.cmdline({ "/", "?" }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = "buffer" }
      }
    })
    
    -- Configuração para : (comandos)
    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = "path" }
      }, {
        { name = "cmdline" }
      })
    })
    
    -- Configuração do LuaSnip
    luasnip.config.setup({
      history = true,
      updateevents = "TextChanged,TextChangedI",
      delete_check_events = "TextChanged",
      ext_opts = {
        [require("luasnip.util.types").choiceNode] = {
          active = {
            virt_text = { { "choiceNode", "Comment" } },
          },
        },
      },
    })
    
    -- Atalhos adicionais para snippets (fora do insert mode)
    vim.keymap.set({ "i", "s" }, "<C-L>", function()
      luasnip.jump(1)
    end, { silent = true, desc = "Jump to next snippet placeholder" })
    
    vim.keymap.set({ "i", "s" }, "<C-H>", function()
      luasnip.jump(-1)
    end, { silent = true, desc = "Jump to previous snippet placeholder" })
    
    vim.keymap.set({ "i", "s" }, "<C-E>", function()
      if luasnip.choice_active() then
        luasnip.change_choice(1)
      end
    end, { silent = true, desc = "Cycle through snippet choices" })
  end,
}