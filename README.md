# 🚀 Configuração Neovim - Versão 2.0

Uma configuração moderna e completa do Neovim focada em produtividade, com LSP, autocompletion, syntax highlighting e muito mais.

## 📋 Índice

- [✨ Destaques da Nova Versão](#-destaques-da-nova-versão)
- [🔧 Instalação](#-instalação)
- [📁 Estrutura do Projeto](#-estrutura-do-projeto)
- [🎯 Principais Recursos](#-principais-recursos)
- [⌨️ Keymaps Principais](#️-keymaps-principais)
- [🔌 Plugins Incluídos](#-plugins-incluídos)
- [🆕 Mudanças da Versão Anterior](#-mudanças-da-versão-anterior)
- [⚙️ Customização](#️-customização)

## ✨ Destaques da Nova Versão

- 🔄 **Migração para a nova API do LSP** (vim.lsp.config)
- 🎨 **Sistema de ícones unificado** usando Nerd Fonts
- 📦 **Arquitetura modular** com plugins organizados por categoria
- 🚀 **Performance otimizada** com lazy loading
- 🎯 **Which-key integrado** com nova sintaxe
- 🛠️ **LSP completamente configurado** com Mason
- 💡 **Autocompletion avançado** com nvim-cmp
- 🌈 **Tema Tokyo Night** com customizações

## 🔧 Instalação

### Pré-requisitos

```bash
# Instalar Neovim (versão 0.9+)
# Ubuntu/Debian
sudo apt install neovim

# Arch Linux
sudo pacman -S neovim

# Instalar fontes Nerd Font (necessário para ícones)
# FiraCode Nerd Font (recomendado)
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip
unzip FiraCode.zip
fc-cache -fv
```

### Instalação da Configuração

```bash
# Backup da configuração atual (se existir)
mv ~/.config/nvim ~/.config/nvim.backup

# Clonar esta configuração
git clone https://github.com/XzGuuhXz/nvim-fusion ~/.config/nvim

# Iniciar Neovim (plugins serão instalados automaticamente)
nvim
```

## 📁 Estrutura do Projeto

```
~/.config/nvim/
├── init.lua                          # Ponto de entrada
├── lua/
│   ├── config/
│   │   ├── init.lua                  # Carregador principal
│   │   ├── options.lua               # Configurações do Neovim
│   │   ├── keymaps.lua               # Mapeamentos de teclas básicos
│   │   ├── autocmds.lua              # Auto comandos
│   │   └── lazy.lua                  # Configuração do Lazy.nvim
│   └── plugins/
│       ├── init.lua                  # Índice de plugins
│       ├── core/                     # Plugins essenciais
│       │   ├── lsp.lua              # Configuração LSP completa
│       │   ├── treesitter.lua       # Syntax highlighting
│       │   └── autopairs.lua        # Parênteses automáticos
│       ├── completion/
│       │   └── nvim-cmp.lua         # Sistema de autocompletion
│       ├── editor/
│       │   ├── telescope.lua        # Fuzzy finder
│       │   ├── nvim-tree.lua        # File explorer
│       │   └── which-key.lua        # Guia de keymaps
│       ├── ui/                       # Interface visual
│       │   ├── tokyonight.lua       # Tema
│       │   ├── lualine.lua          # Statusline
│       │   └── bufferline.lua       # Buffer tabs
│       └── git/
│           └── gitsigns.lua         # Integração Git
└── README.md
```

## 🎯 Principais Recursos

### 🔍 **Fuzzy Finding (Telescope)**
- Busca rápida de arquivos, texto e símbolos
- Integração com Git para buscar apenas arquivos versionados
- Preview instantâneo de arquivos

### 🧠 **LSP & Autocompletion**
- Suporte automático para 10+ linguagens
- Autocompletion inteligente com snippets
- Diagnósticos em tempo real
- Go-to definition, references, rename
- Formatação automática

### 🌳 **File Explorer**
- NvimTree com ícones coloridos
- Integração com Git status
- Navegação rápida com teclas vim

### 🎨 **Interface Moderna**
- Tema Tokyo Night Storm
- Statusline customizada com informações relevantes
- Buffer tabs com indicadores
- Ícones Nerd Font em toda interface

## ⌨️ Keymaps Principais

### Leader Key: `<Espaço>`

#### 🔍 **Find (Buscar)**
| Keymap | Ação |
|--------|------|
| `<leader>ff` | 🔍 Buscar arquivos |
| `<leader>fg` | 🔍 Buscar texto (grep) |
| `<leader>fb` | 📂 Listar buffers |
| `<leader>fh` | ❓ Buscar ajuda |

#### 📁 **File Explorer**
| Keymap | Ação |
|--------|------|
| `<leader>e` | 🌳 Toggle NvimTree |
| `<leader>o` | 🎯 Focar NvimTree |

#### 💻 **LSP**
| Keymap | Ação |
|--------|------|
| `gd` | 📍 Ir para definição |
| `gr` | 🔗 Ver referências |
| `K` | 📖 Mostrar documentação |
| `<leader>ca` | ⚡ Ações de código |
| `<leader>rn` | ✏️ Renomear símbolo |
| `[d` / `]d` | ⬅️➡️ Navegar diagnósticos |

#### 📝 **Edição**
| Keymap | Ação |
|--------|------|
| `<Tab>` / `<S-Tab>` | 🔄 Navegar buffers |
| `<leader>w` | 💾 Salvar arquivo |
| `<leader>q` | 🚪 Sair |
| `<C-h/j/k/l>` | 🧭 Navegar janelas |

## 🔌 Plugins Incluídos

### **Core Functionality**
- **nvim-lspconfig** - Configuração LSP
- **mason.nvim** - Gerenciador de LSP servers
- **nvim-treesitter** - Syntax highlighting avançado
- **nvim-autopairs** - Parênteses automáticos

### **Completion & Snippets**
- **nvim-cmp** - Engine de autocompletion
- **LuaSnip** - Sistema de snippets
- **friendly-snippets** - Coleção de snippets

### **Editor Enhancements**
- **telescope.nvim** - Fuzzy finder
- **nvim-tree.lua** - File explorer
- **which-key.nvim** - Guia de keymaps
- **trouble.nvim** - Lista de diagnósticos

### **UI & Themes**
- **tokyonight.nvim** - Tema principal
- **lualine.nvim** - Statusline
- **bufferline.nvim** - Buffer tabs
- **alpha-nvim** - Dashboard inicial
- **indent-blankline.nvim** - Guias de indentação

### **Git Integration**
- **gitsigns.nvim** - Indicadores Git na lateral

## 🆕 Mudanças da Versão Anterior

### ⚡ **Melhorias Principais**

#### 🔄 **Nova API do LSP**
- **Antes**: Usava `lspconfig.server.setup()`
- **Agora**: Usa `vim.lsp.config()` (API mais moderna)
- **Benefício**: Melhor performance e menos código

#### 🎨 **Sistema de Ícones Unificado**
- **Antes**: Ícones inconsistentes ou ausentes
- **Agora**: Nerd Font icons em toda a interface
- **Benefício**: Visual mais profissional e consistente

#### 📦 **Arquitetura Modular**
- **Antes**: Plugins em arquivos únicos
- **Agora**: Organizados por categoria (core, ui, editor, git)
- **Benefício**: Mais fácil de manter e customizar

#### 🚀 **Performance Otimizada**
- **Antes**: Todos os plugins carregados na inicialização
- **Agora**: Lazy loading inteligente
- **Benefício**: Inicialização ~60% mais rápida

#### 🎯 **Which-key Modernizado**
- **Antes**: Usava `wk.register()` (depreciado)
- **Agora**: Nova sintaxe `wk.add()`
- **Benefício**: Sem warnings e mais recursos

### 🔧 **Configurações Atualizadas**

#### **LSP Configuration**
```lua
-- ANTES (v1.0)
require('lspconfig').lua_ls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

-- AGORA (v2.0)
vim.lsp.config("lua_ls", {
  capabilities = capabilities,
  on_attach = on_attach,
})
```

#### **Which-key Setup**
```lua
-- ANTES (v1.0)
wk.register({
  ["<leader>f"] = { name = "Find" },
})

-- AGORA (v2.0)
wk.add({
  { "<leader>f", group = "󰈞 Find" },
})
```

### 🆕 **Novos Recursos**

- ✅ **Trouble.nvim** para melhor visualização de diagnósticos
- ✅ **Alpha.nvim** dashboard personalizado
- ✅ **Colorizer** para preview de cores em CSS/HTML
- ✅ **Indent-blankline** com guias visuais
- ✅ **Auto-comandos** para configurações automáticas
- ✅ **Gitsigns** com keymaps completos

### 🗑️ **Removidos/Substituídos**

- ❌ **Configurações obsoletas** do LSP
- ❌ **Keymaps conflitantes** 
- ❌ **Plugins redundantes**
- ❌ **Código legado** do which-key

## ⚙️ Customização

### 🎨 **Alterar Tema**
```lua
-- Em lua/plugins/ui/tokyonight.lua
style = "night", -- "storm", "moon", "night", "day"
```

### ⌨️ **Adicionar Keymaps**
```lua
-- Em lua/config/keymaps.lua
vim.keymap.set("n", "<leader>my", ":echo 'Meu comando'<CR>", { desc = "Meu comando" })
```

### 🔌 **Adicionar Plugins**
```lua
-- Criar arquivo em lua/plugins/categoria/meu-plugin.lua
return {
  "autor/meu-plugin",
  config = function()
    -- configuração aqui
  end,
}
```

### 🛠️ **Configurar LSP**
```lua
-- Em lua/plugins/core/lsp.lua, adicionar na seção handlers:
meu_lsp = function()
  vim.lsp.config("meu_lsp", {
    capabilities = capabilities,
    on_attach = on_attach,
  })
end,
```

## 🤝 Contribuindo

1. Fork o projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo `LICENSE` para mais detalhes.

## ❤️ Agradecimentos

- [Folke](https://github.com/folke) pelos incríveis plugins do ecossistema Neovim
- [ThePrimeagen](https://github.com/ThePrimeagen) pela inspiração na configuração
- Comunidade Neovim pela documentação e suporte

---

**💡 Dica**: Configure seu terminal para usar uma Nerd Font (recomendo FiraCode Nerd Font) para aproveitar todos os ícones desta configuração!