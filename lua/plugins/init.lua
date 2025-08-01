-- Arquivo principal de plugins
-- Carrega todos os plugins organizados por categoria

return {
  -- === CORE FUNCTIONALITY ===
  -- Plugins essenciais para funcionamento básico
  require("plugins.core.treesitter"),
  require("plugins.core.lsp"),
  require("plugins.core.autopairs"),

  
  -- === COMPLETION & SNIPPETS ===
  -- Sistema de autocompletion
  require("plugins.completion.nvim-cmp"),
  
  -- === UI & THEMES ===
  -- Interface visual e temas
  require("plugins.ui.tokyonight"),
  require("plugins.ui.lualine"),
  require("plugins.ui.bufferline"),
  require("plugins.ui.alpha"),
  require("plugins.ui.indent-blankline"),
  require("plugins.ui.colorizer"),
  
  -- === EDITOR ENHANCEMENTS ===
  -- Ferramentas de edição
  require("plugins.editor.telescope"),
  require("plugins.editor.nvim-tree"),
  require("plugins.editor.neo-tree"),
  require("plugins.editor.which-key"),
  
  -- === GIT INTEGRATION ===
  -- Integração com Git
  require("plugins.git.gitsigns"),
  
  -- === LSP ENHANCEMENTS ===
  require("plugins.core.lspkind"),
  require("plugins.core.trouble"),
}
