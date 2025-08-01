return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- Atualiza os parsers automaticamente
  lazy = false, -- Carrega imediatamente na inicialização
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects", -- Objetos de texto inteligentes
  },
  config = function()
    require("nvim-treesitter.configs").setup({
      -- Lista de linguagens que serão instaladas automaticamente
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "query",
        "javascript",
        "typescript",
        "python",
        "html",
        "css",
        "json",
        "yaml",
        "markdown",
        "markdown_inline",
        "bash",
        "c",
        "cpp",
        "go",
        "rust",
        "java",
        -- Adicione outras linguagens que você usa
      },
      
      -- Instala parsers de forma síncrona (apenas para ensure_installed)
      sync_install = false,
      
      -- Instala automaticamente parsers quando entrar em buffers novos
      auto_install = true,
      
      -- Lista de parsers para ignorar a instalação
      ignore_install = {},
      
      ---- MÓDULOS DO TREESITTER ----
      
      -- Syntax highlighting
      highlight = {
        enable = true,
        -- Linguagens que não devem usar treesitter (usar syntax vim tradicional)
        disable = {},
        -- Usar syntax vim adicional junto com treesitter
        additional_vim_regex_highlighting = false,
      },
      
      -- Indentação inteligente baseada em treesitter
      indent = {
        enable = true,
        -- Linguagens que podem ter problemas com indent do treesitter
        disable = { "python" }, -- Python às vezes tem problemas
      },
      
      -- Seleção incremental inteligente
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",    -- Ctrl+Space para iniciar seleção
          node_incremental = "<C-space>",  -- Ctrl+Space para expandir
          scope_incremental = "<C-s>",     -- Ctrl+S para expandir escopo
          node_decremental = "<C-backspace>", -- Ctrl+Backspace para diminuir
        },
      },
      
      -- Objetos de texto (requer nvim-treesitter-textobjects)
      textobjects = {
        select = {
          enable = true,
          lookahead = true, -- Vai automaticamente para o próximo objeto
          keymaps = {
            -- Você pode usar os capture groups definidos em textobjects.scm
            ["af"] = "@function.outer",   -- around function
            ["if"] = "@function.inner",   -- inside function
            ["ac"] = "@class.outer",      -- around class
            ["ic"] = "@class.inner",      -- inside class
            ["aa"] = "@parameter.outer",  -- around argument
            ["ia"] = "@parameter.inner",  -- inside argument
            ["al"] = "@loop.outer",       -- around loop
            ["il"] = "@loop.inner",       -- inside loop
            ["ai"] = "@conditional.outer", -- around if
            ["ii"] = "@conditional.inner", -- inside if
            ["a/"] = "@comment.outer",    -- around comment
            ["i/"] = "@comment.inner",    -- inside comment
            ["ab"] = "@block.outer",      -- around block
            ["ib"] = "@block.inner",      -- inside block
            ["as"] = "@statement.outer",  -- around statement
            ["is"] = "@statement.inner",  -- inside statement
            ["ad"] = "@call.outer",       -- around call
            ["id"] = "@call.inner",       -- inside call
            ["am"] = "@call.outer",       -- around method call
            ["im"] = "@call.inner",       -- inside method call
          },
        },
        move = {
          enable = true,
          set_jumps = true, -- Se definirá marks e adicionará à jumplist
          goto_next_start = {
            ["]m"] = "@function.outer",
            ["]]"] = "@class.outer",
            ["]o"] = "@loop.*",
            ["]s"] = "@statement.outer",
          },
          goto_next_end = {
            ["]M"] = "@function.outer",
            ["]["] = "@class.outer",
          },
          goto_previous_start = {
            ["[m"] = "@function.outer",
            ["[["] = "@class.outer",
            ["[o"] = "@loop.*",
            ["[s"] = "@statement.outer",
          },
          goto_previous_end = {
            ["[M"] = "@function.outer",
            ["[]"] = "@class.outer",
          },
        },
        swap = {
          enable = true,
          swap_next = {
            ["<leader>a"] = "@parameter.inner", -- swap parameters/argument with next
            ["<leader>A"] = "@function.outer",  -- swap function with next
          },
          swap_previous = {
            ["<leader>A"] = "@parameter.inner", -- swap parameters/argument with prev
            ["<leader>A"] = "@function.outer",  -- swap function with previous
          },
        },
      },
      
      -- Parênteses automáticos (se você quiser)
      autopairs = {
        enable = true,
      },
      
      -- Melhor detecção do contexto para statusline, winbar, etc.
      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },
    })
    
    -- Configuração adicional para melhor experiência
    
    -- Dobramento (folding) baseado em treesitter
    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
    vim.opt.foldenable = false -- Não iniciar com folds fechados
    
    -- Melhor syntax highlighting para alguns tipos de arquivo
    vim.filetype.add({
      extension = {
        conf = "conf",
        env = "dotenv",
      },
      filename = {
        [".env"] = "dotenv",
        ["tsconfig.json"] = "jsonc",
      },
      pattern = {
        ["%.env%.[%w_.-]+"] = "dotenv",
      },
    })
  end,
}