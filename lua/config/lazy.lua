-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)

-- Certifique-se de configurar `mapleader` e `maplocalleader` antes
-- de carregar o lazy.nvim para que os mapeamentos fiquem corretos.
-- Este também é um bom lugar para definir outras configurações (vim.opt)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Carregar plugins da pasta "plugins/"
require("lazy").setup("plugins", {
  ui = { 
    border = "rounded",
    icons = {
      cmd = "⌘",
      config = "🛠",
      event = "📅",
      ft = "📂",
      init = "⚙",
      keys = "🗝",
      plugin = "🔌",
      runtime = "💻",
      source = "📄",
      start = "🚀",
      task = "📌",
      lazy = "💤 ",
    },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.

  -- Configure quaisquer outras configurações aqui. Consulte a documentação para mais detalhes.
  -- esquema de cores que será usado ao instalar plugins.
  install = { 
    colorscheme = { "tokyonight" } 
  },
  -- automatically check for plugin updates
  -- verificar automaticamente se há atualizações de plugins
  checker = { enabled = true },
})

