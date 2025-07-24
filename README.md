# NVIM FUSION 🚀
## Documentação Completa

Uma configuração moderna e completa do Neovim focada em produtividade e experiência visual, construída com Lua e plugins cuidadosamente selecionados.

![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white)

## 📊 Informações da Versão

| **Componente** | **Versão** | **Status** |
|----------------|------------|------------|
| **NVIM FUSION** | `v1.0.0` | ✅ Estável |
| **Neovim** | `>= 0.9.0` | ✅ Requerido |
| **Lua** | `5.1+` | ✅ Integrado |
| **Lazy.nvim** | `Latest` | 🔄 Auto-update |
| **LSP Servers** | `Variável` | 🔄 Gerenciado pelo Mason |

### 🔄 Histórico de Versões

- **v1.0.0** (Atual)
  - ✨ Adicionado suporte completo ao TypeScript
  - 🔧 Melhorias na configuração do LSP
  - 🎨 Interface Lualine redesenhada
  - 🐛 Correções de bugs menores
  - 🚀 Migração completa para Lazy.nvim
  - 📦 Reorganização da estrutura de plugins
  - ⚡ Melhorias significativas de performance
  - 🔒 Sistema de diagnósticos unificado
  - 🌳 Integração completa com Treesitter
  - 🎯 Sistema de snippets aprimorado
  - 📝 Documentação expandida

### 📦 Compatibilidade

| **Sistema** | **Status** | **Notas** |
|-------------|------------|-----------|
| **Linux** | ✅ Totalmente suportado | Testado em Ubuntu, Arch, Fedora |
| **macOS** | ✅ Totalmente suportado | Homebrew recomendado |
| **Windows** | ⚠️ Parcialmente suportado | WSL2 recomendado |
| **Termux** | 🔶 Experimental | Algumas limitações |

### 🆕 Atualizações

Para manter sua configuração atualizada:

```bash
# Método 1: Git pull (recomendado)
cd ~/.config/nvim
git pull origin main

# Método 2: Reinstalação completa
mv ~/.config/nvim ~/.config/nvim.backup
git clone https://github.com/XzGuuhXz/Nvim-fusion.git ~/.config/nvim
```

**⚠️ Importante**: Sempre faça backup antes de atualizar!

---

## 📖 Índice

1. [Informações da Versão](#-informações-da-versão)
2. [Visão Geral](#-visão-geral)
3. [Características](#-características)
4. [Pré-requisitos](#-pré-requisitos)
5. [Instalação](#-instalação)
6. [Estrutura do Projeto](#️-estrutura-do-projeto)
7. [Configuração Principal](#️-configuração-principal)
8. [Plugins e Funcionalidades](#-plugins-e-funcionalidades)
9. [Atalhos de Teclado](#️-atalhos-de-teclado)
10. [Linguagens Suportadas](#-linguagens-suportadas)
11. [Personalização](#-personalização)
12. [Troubleshooting](#️-troubleshooting)
13. [Comandos Úteis](#-comandos-úteis)
14. [Exemplos de Uso](#-exemplos-de-uso)
15. [Configurações Avançadas](#-configurações-avançadas)
16. [Plugins Adicionais Recomendados](#-plugins-adicionais-recomendados)
17. [Dicas e Truques](#-dicas-e-truques)
18. [Segurança e Backup](#-segurança-e-backup)
19. [Monitoramento e Performance](#-monitoramento-e-performance)
20. [Recursos Avançados](#-recursos-avançados)
21. [Casos de Uso Específicos](#-casos-de-uso-específicos)
22. [Referências e Recursos](#-referências-e-recursos)
23. [Contribuindo](#-contribuindo)

---

## 🎯 Visão Geral

O NVIM FUSION é uma configuração completa do Neovim que transforma o editor em um IDE moderno e poderoso. Foi projetado com foco na produtividade do desenvolvedor, oferecendo uma interface visual atraente e funcionalidades avançadas sem comprometer a performance.

### Filosofia de Design

- **Minimalismo Funcional**: Cada plugin tem um propósito específico
- **Performance**: Carregamento lazy de plugins para inicialização rápida
- **Experiência Visual**: Interface moderna com ícones e temas cuidadosamente escolhidos
- **Produtividade**: Atalhos intuitivos e funcionalidades que aceleram o desenvolvimento

---

## ✨ Características

### 🎨 Interface Visual
- **Tema TokyoNight**: Esquema de cores moderno com variantes (night, storm, moon, day)
- **Statusline Personalizada**: Lualine com informações detalhadas e ícones
- **File Explorer**: NvimTree com ícones visuais e integração Git
- **Bufferline**: Gerenciamento visual de buffers com abas
- **Dashboard**: Tela inicial personalizada com atalhos rápidos

### 🔍 Navegação e Busca
- **Telescope**: Fuzzy finder para arquivos, conteúdo e comandos
- **Which-Key**: Guia visual de atalhos de teclado
- **Treesitter**: Syntax highlighting avançado e navegação por código

### 🧠 LSP e Autocompletion
- **Mason**: Gerenciador automático de LSP servers
- **nvim-cmp**: Sistema de autocompletion inteligente
- **LuaSnip**: Engine de snippets com suporte a VSCode snippets
- **Diagnósticos**: Integração completa com LSP para erros e warnings

### 🛠️ Ferramentas de Desenvolvimento
- **Git Integration**: Gitsigns para visualização de mudanças
- **Auto-pairs**: Fechamento automático de parênteses e aspas
- **Comment**: Toggle inteligente de comentários
- **Indentação Visual**: Guias de indentação para melhor legibilidade

---

## 📋 Pré-requisitos

### Software Obrigatório
- **Neovim** >= 0.9.0
- **Git** (para gerenciamento de plugins)
- **Node.js** e **npm** (para alguns LSP servers)
- **Ripgrep** (para busca de texto rápida)

### Software Recomendado
- **Nerd Font** (para ícones): JetBrainsMono Nerd Font
- **Terminal com True Color**: Para melhor experiência visual

### Instalação de Dependências

#### Ubuntu/Debian
```bash
sudo apt update
sudo apt install git nodejs npm ripgrep
```

#### Arch Linux
```bash
sudo pacman -S git nodejs npm ripgrep
```

#### macOS (com Homebrew)
```bash
brew install git node ripgrep
```

#### Windows (com Chocolatey)
```powershell
choco install git nodejs ripgrep
```

---

## 🚀 Instalação

### Instalação Limpa

1. **Backup da configuração atual** (se existir):
```bash
mv ~/.config/nvim ~/.config/nvim.backup
mv ~/.local/share/nvim ~/.local/share/nvim.backup
```

2. **Clone o repositório**:
```bash
git clone https://github.com/XzGuuhXz/Nvim-fusion.git ~/.config/nvim
```

3. **Primeira inicialização**:
```bash
nvim
```

O Lazy.nvim será instalado automaticamente e todos os plugins serão baixados. Aguarde a conclusão da instalação inicial.

### Verificação da Instalação

Execute os seguintes comandos no Neovim para verificar se tudo está funcionando:

```vim
:checkhealth
:Lazy
:Mason
```

---

## 🗂️ Estrutura do Projeto

```
~/.config/nvim/
├── init.lua                    # Configuração principal e bootstrap
├── LICENSE                     # Licença MIT
├── README.md                   # Documentação básica
└── lua/
    └── plugins/
        ├── lsp/
        │   └── init.lua       # LSP, autocompletion e diagnósticos
        ├── tools/
        │   └── init.lua       # Telescope e Treesitter
        ├── ui/
        │   └── init.lua       # Interface, temas e componentes visuais
        └── util/
            └── init.lua       # Utilitários (which-key, autopairs, etc.)
```

### Descrição dos Módulos

#### `init.lua` (Principal)
- Configurações básicas do Neovim
- Bootstrap do Lazy.nvim
- Keymaps fundamentais
- Configuração de diagnósticos

#### `lua/plugins/lsp/init.lua`
- Configuração do Mason para gerenciamento de LSP servers
- Setup do nvim-cmp para autocompletion
- Configuração individual de cada LSP server
- Keymaps específicos do LSP

#### `lua/plugins/tools/init.lua`
- Telescope para busca e navegação
- Treesitter para syntax highlighting
- Ferramentas de desenvolvimento

#### `lua/plugins/ui/init.lua`
- Tema TokyoNight
- Lualine (statusline)
- NvimTree (file explorer)
- Bufferline
- Componentes visuais diversos

#### `lua/plugins/util/init.lua`
- Which-key para guias de atalhos
- Autopairs para fechamento automático
- Comment para toggle de comentários
- Outras utilidades

---

## ⚙️ Configuração Principal

### Configurações Básicas (init.lua)

```lua
-- Leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Configurações de interface
vim.opt.number = true              -- Números de linha
vim.opt.relativenumber = false     -- Números relativos desabilitados
vim.opt.termguicolors = true       -- True color support
vim.opt.showmode = false           -- Não mostrar modo (lualine faz isso)
vim.opt.scrolloff = 8              -- Manter 8 linhas visíveis ao rolar
vim.opt.signcolumn = "yes"         -- Sempre mostrar coluna de símbolos

-- Configurações de edição
vim.opt.tabstop = 2                -- Tamanho do tab
vim.opt.shiftwidth = 2             -- Tamanho da indentação
vim.opt.expandtab = true           -- Usar espaços em vez de tabs
vim.opt.smartindent = true         -- Indentação inteligente
vim.opt.wrap = false               -- Não quebrar linhas
vim.opt.clipboard = "unnamedplus"  -- Usar clipboard do sistema

-- Configurações de busca
vim.opt.hlsearch = false           -- Não destacar buscas antigas
vim.opt.incsearch = true           -- Busca incremental

-- Configurações de backup
vim.opt.swapfile = false           -- Não criar arquivos swap
vim.opt.backup = false             -- Não criar backups
```

### Sistema de Diagnósticos

```lua
vim.diagnostic.config({
  virtual_text = {
    prefix = "●",
    spacing = 4,
    severity_sort = true,
    source = "if_many",
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN]  = "",
      [vim.diagnostic.severity.HINT]  = "",
      [vim.diagnostic.severity.INFO]  = "",
    }
  },
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = "always",
    focusable = false,
  },
})
```

---

## 🔌 Plugins e Funcionalidades

### Core Plugins

#### Lazy.nvim (Plugin Manager)
- **Função**: Gerenciamento moderno de plugins
- **Características**: 
  - Carregamento lazy por padrão
  - Interface visual para gerenciamento
  - Auto-instalação de plugins
  - Sistema de dependências

#### Plenary.nvim
- **Função**: Biblioteca de utilitários Lua
- **Uso**: Dependência para muitos outros plugins

### LSP e Completion

#### Mason.nvim
```lua
-- LSP Servers instalados automaticamente
ensure_installed = { 
  "lua_ls",        -- Lua
  "pyright",       -- Python
  "ts_ls",         -- TypeScript/JavaScript
  "jsonls",        -- JSON
  "html",          -- HTML
  "cssls",         -- CSS
  "clangd"         -- C/C++
}
```

#### nvim-cmp (Autocompletion)
- **Fontes de completion**:
  - LSP servers
  - Buffer atual
  - Caminhos de arquivo
  - Snippets (LuaSnip)
- **Características**:
  - Preview de documentação
  - Ordenação inteligente
  - Ghost text
  - Integração com snippets

#### LuaSnip
- Engine de snippets compatível com VSCode
- Suporte a snippets customizados
- Expansão e navegação entre placeholders

### Interface e Tema

#### TokyoNight
```lua
-- Configurações do tema
styles = {
  comments = { italic = true },
  keywords = { italic = true },
  functions = { bold = true },
  variables = {},
}
```

#### Lualine (Statusline)
- **Seções configuradas**:
  - Modo atual com ícones
  - Branch Git e diff
  - Diagnósticos LSP
  - Nome do arquivo
  - Encoding e formato
  - Posição no arquivo

#### NvimTree (File Explorer)
- Integração com Git
- Ícones para diferentes tipos de arquivo
- Navegação por teclado
- Preview de arquivos

### Ferramentas

#### Telescope
- **Funcionalidades**:
  - Busca de arquivos
  - Busca de conteúdo (grep)
  - Lista de buffers
  - Comandos e help tags
- **Interface**: Fuzzy finder com preview

#### Treesitter
- Syntax highlighting avançado
- Navegação estrutural por código
- Parsers para múltiplas linguagens
- Indentação inteligente

### Utilitários

#### Which-Key
- Guia visual de atalhos
- Grupos organizados por funcionalidade
- Timeout configurável
- Descrições detalhadas

#### Autopairs
- Fechamento automático de:
  - Parênteses: `()`
  - Chaves: `{}`
  - Colchetes: `[]`
  - Aspas: `""`, `''`
- Integração com nvim-cmp

#### Comment.nvim
- Toggle de comentários inteligente
- Suporte a múltiplas linguagens
- Comentários em bloco e linha
- Integração com Treesitter

---

## ⌨️ Atalhos de Teclado

### Convenções
- `<leader>` = Espaço (Space)
- `<C-x>` = Ctrl + x
- `<S-x>` = Shift + x
- `<M-x>` = Alt + x

### Atalhos Básicos

| Atalho | Ação | Descrição |
|--------|------|-----------|
| `<Space>` | Leader | Tecla líder principal |
| `<leader>w` | `:w<CR>` | Salvar arquivo atual |
| `<leader>q` | `:q<CR>` | Sair do Neovim |
| `<leader>pv` | `:Ex` | Abrir explorador nativo |

### Navegação

#### Entre Janelas
| Atalho | Ação | Descrição |
|--------|------|-----------|
| `<C-h>` | `<C-w>h` | Mover para janela à esquerda |
| `<C-j>` | `<C-w>j` | Mover para janela abaixo |
| `<C-k>` | `<C-w>k` | Mover para janela acima |
| `<C-l>` | `<C-w>l` | Mover para janela à direita |

#### Edição Avançada
| Atalho | Ação | Modo | Descrição |
|--------|------|------|-----------|
| `J` | Mover linha para baixo | Visual | Move seleção para baixo |
| `K` | Mover linha para cima | Visual | Move seleção para cima |
| `<` | Diminuir indentação | Visual | Mantém seleção ativa |
| `>` | Aumentar indentação | Visual | Mantém seleção ativa |
| `n` | Próximo resultado | Normal | Centraliza na tela |
| `N` | Resultado anterior | Normal | Centraliza na tela |

### Telescope (Busca e Navegação)

| Atalho | Comando | Descrição |
|--------|---------|-----------|
| `<leader>ff` | `:Telescope find_files` | Buscar arquivos |
| `<leader>fg` | `:Telescope live_grep` | Busca textual em tempo real |
| `<leader>fb` | `:Telescope buffers` | Listar buffers abertos |
| `<leader>fh` | `:Telescope help_tags` | Buscar na documentação |
| `<leader>pf` | `builtin.find_files` | Buscar arquivos (alternativo) |
| `<C-p>` | `builtin.git_files` | Arquivos versionados no Git |
| `<leader>ps` | `builtin.grep_string` | Buscar texto específico |
| `<leader>pb` | `builtin.buffers` | Buffers (alternativo) |

### File Explorer (NvimTree)

| Atalho | Ação | Descrição |
|--------|------|-----------|
| `<leader>e` | `:NvimTreeToggle` | Abrir/fechar explorador |
| `<leader>o` | `:NvimTreeFocus` | Focar no explorador |
| `<leader>f` | `:NvimTreeFindFile` | Encontrar arquivo atual no explorador |

#### Navegação no NvimTree
| Atalho | Ação |
|--------|------|
| `<CR>` | Abrir arquivo/pasta |
| `o` | Abrir arquivo/pasta |
| `<Tab>` | Preview do arquivo |
| `a` | Criar arquivo/pasta |
| `d` | Deletar |
| `r` | Renomear |
| `x` | Recortar |
| `c` | Copiar |
| `p` | Colar |
| `R` | Atualizar |
| `H` | Mostrar/ocultar arquivos ocultos |

### Gerenciamento de Buffers

| Atalho | Ação | Descrição |
|--------|------|-----------|
| `<Tab>` | `:BufferLineCycleNext` | Próximo buffer |
| `<S-Tab>` | `:BufferLineCyclePrev` | Buffer anterior |
| `<leader>x` | `:bdelete` | Fechar buffer atual |

### LSP (Language Server Protocol)

#### Navegação por Código
| Atalho | Ação | Descrição |
|--------|------|-----------|
| `gd` | `vim.lsp.buf.definition` | Ir para definição |
| `gD` | `vim.lsp.buf.declaration` | Ir para declaração |
| `gi` | `vim.lsp.buf.implementation` | Ir para implementação |
| `gr` | `vim.lsp.buf.references` | Mostrar referências |
| `K` | `vim.lsp.buf.hover` | Documentação hover |
| `<C-k>` | `vim.lsp.buf.signature_help` | Ajuda de assinatura |

#### Ações de Código
| Atalho | Ação | Descrição |
|--------|------|-----------|
| `<leader>rn` | `vim.lsp.buf.rename` | Renomear símbolo |
| `<leader>ca` | `vim.lsp.buf.code_action` | Ações de código |
| `<leader>f` | `vim.lsp.buf.format` | Formatar código |

#### Diagnósticos
| Atalho | Ação | Descrição |
|--------|------|-----------|
| `[d` | `vim.diagnostic.goto_prev` | Diagnóstico anterior |
| `]d` | `vim.diagnostic.goto_next` | Próximo diagnóstico |
| `<leader>d` | `vim.diagnostic.open_float` | Mostrar diagnóstico |

### Autocompletion (nvim-cmp)

| Atalho | Ação | Descrição |
|--------|------|-----------|
| `<C-Space>` | `cmp.complete()` | Ativar completion manual |
| `<CR>` | `cmp.confirm()` | Confirmar seleção |
| `<Tab>` | Próximo item | Navegar/expandir snippet |
| `<S-Tab>` | Item anterior | Navegação reversa |
| `<C-b>` | Scroll docs up | Rolar documentação |
| `<C-f>` | Scroll docs down | Rolar documentação |
| `<C-e>` | Abort | Cancelar completion |

### Git (Gitsigns)

| Atalho | Ação | Descrição |
|--------|------|-----------|
| `]c` | Next hunk | Próxima alteração |
| `[c` | Previous hunk | Alteração anterior |
| `<leader>hs` | Stage hunk | Adicionar alteração |
| `<leader>hr` | Reset hunk | Reverter alteração |
| `<leader>hS` | Stage buffer | Adicionar arquivo |
| `<leader>hR` | Reset buffer | Reverter arquivo |
| `<leader>hp` | Preview hunk | Visualizar alteração |
| `<leader>hb` | Blame line | Mostrar blame |
| `<leader>hd` | Diff this | Mostrar diff |

---

## 🌐 Linguagens Suportadas

### LSP Servers Configurados

#### Lua (`lua_ls`)
```lua
settings = {
  Lua = {
    runtime = { version = 'LuaJIT' },
    diagnostics = { globals = { "vim" } },
    workspace = {
      library = vim.api.nvim_get_runtime_file("", true),
      checkThirdParty = false,
    },
    telemetry = { enable = false },
    format = { enable = true },
  },
}
```

#### Python (`pyright`)
```lua
settings = {
  python = {
    analysis = {
      typeCheckingMode = "basic",
    }
  }
}
```

#### TypeScript/JavaScript (`ts_ls`)
- Suporte completo a TypeScript e JavaScript
- Inlay hints configurados
- Refactoring automático
- Import/export management

#### Web Development
- **HTML** (`html`): Autocompletion de tags e atributos
- **CSS** (`cssls`): Propriedades CSS e valores
- **JSON** (`jsonls`): Validação e schema support

#### C/C++ (`clangd`)
```lua
cmd = { "clangd", "--background-index", "--clang-tidy" }
filetypes = { "c", "cpp", "objc", "objcpp" }
```

### Adicionando Novas Linguagens

1. **Adicionar ao Mason** em `lua/plugins/lsp/init.lua`:
```lua
ensure_installed = { 
  "lua_ls", 
  "pyright", 
  "ts_ls",
  "nova_linguagem_ls"  -- Adicione aqui
}
```

2. **Configurar o LSP**:
```lua
require("lspconfig").nova_linguagem_ls.setup({
  capabilities = capabilities,
  -- configurações específicas
})
```

3. **Treesitter Parser**:
```lua
ensure_installed = {
  "lua", "python", "javascript",
  "nova_linguagem"  -- Adicione aqui
}
```

### Linguagens Disponíveis no Mason

Para ver todas as linguagens disponíveis:
```vim
:Mason
```

Algumas opções populares:
- **Rust**: `rust_analyzer`
- **Go**: `gopls`
- **Java**: `jdtls`
- **PHP**: `phpactor`
- **Ruby**: `solargraph`
- **Dart**: `dartls`
- **Kotlin**: `kotlin_language_server`

---

## 🎨 Personalização

### Alterando o Tema

#### TokyoNight Variants
Edite `lua/plugins/ui/init.lua`:

```lua
require("tokyonight").setup({
  style = "night", -- "storm", "moon", "day"
  transparent = false,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = { bold = true },
  },
})
```

**Estilos disponíveis**:
- `night` - Azul escuro (padrão)
- `storm` - Azul acinzentado
- `moon` - Roxo escuro
- `day` - Tema claro

#### Outros Temas Compatíveis
Para usar outros temas, adicione em `lua/plugins/ui/init.lua`:

```lua
-- Catppuccin
{
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("catppuccin")
  end
}

-- Gruvbox
{
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("gruvbox")
  end
}
```

### Personalizando a Lualine

#### Modificar Seções
```lua
sections = {
  lualine_a = {'mode'},
  lualine_b = {'branch', 'diff', 'diagnostics'},
  lualine_c = {'filename'},
  lualine_x = {'encoding', 'fileformat', 'filetype'},
  lualine_y = {'progress'},
  lualine_z = {'location'}
}
```

#### Cores Personalizadas
```lua
local colors = {
  bg = '#1a1b26',
  fg = '#c0caf5',
  yellow = '#e0af68',
  cyan = '#7dcfff',
  -- adicione suas cores
}
```

### Configurando Atalhos Personalizados

Adicione em `init.lua`:
```lua
-- Atalhos personalizados
vim.keymap.set("n", "<leader>sv", ":source ~/.config/nvim/init.lua<CR>", { desc = "Reload config" })
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search" })
vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })
```

### Adicionando Plugins

1. **Criar novo arquivo** em `lua/plugins/`:
```lua
-- lua/plugins/meu_plugin.lua
return {
  "author/plugin-name",
  config = function()
    require("plugin-name").setup({
      -- configurações
    })
  end
}
```

2. **Ou adicionar a arquivo existente**:
```lua
-- Em lua/plugins/util/init.lua
{
  "novo/plugin",
  dependencies = { "dependencia" },
  config = function()
    -- configuração
  end
}
```

### Configurações Específicas por Filetype

Crie arquivos em `~/.config/nvim/after/ftplugin/`:

```lua
-- ~/.config/nvim/after/ftplugin/python.lua
vim.opt_local.shiftwidth = 4
vim.opt_local.tabstop = 4
vim.keymap.set("n", "<leader>r", ":!python %<CR>", { buffer = true })
```

---

## 🛠️ Troubleshooting

### Problemas Comuns e Soluções

#### LSP não funciona
```vim
:checkhealth lsp
:LspInfo
:Mason
```

**Soluções**:
1. Verificar se o LSP server está instalado no Mason
2. Reinstalar server: `:MasonUninstall server_name` → `:MasonInstall server_name`
3. Verificar logs: `:LspLog`

#### Ícones não aparecem
**Problema**: Quadrados ou caracteres estranhos no lugar de ícones

**Solução**:
1. Instalar uma Nerd Font:
   ```bash
   # Download JetBrainsMono Nerd Font
   wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip
   unzip JetBrainsMono.zip -d ~/.local/share/fonts/
   fc-cache -fv
   ```
2. Configurar terminal para usar a fonte
3. Verificar suporte do terminal

#### Telescope muito lento
**Sintomas**: Busca de arquivos demorada

**Soluções**:
1. Instalar ripgrep:
   ```bash
   # Ubuntu/Debian
   sudo apt install ripgrep
   # macOS
   brew install ripgrep
   ```
2. Verificar se está instalado: `rg --version`

#### Treesitter com erros
```vim
:TSUpdate
:TSInstall <linguagem>
:checkhealth nvim-treesitter
```

**Soluções**:
1. Atualizar parsers: `:TSUpdate`
2. Reinstalar parser específico: `:TSUninstall <lang>` → `:TSInstall <lang>`
3. Verificar compilador C disponível

#### Autocompletion não funciona
**Verificações**:
1. LSP server rodando: `:LspInfo`
2. nvim-cmp configurado: `:CmpStatus`
3. Capabilities configuradas corretamente

#### Performance baixa
**Otimizações**:
1. Desabilitar plugins desnecessários
2. Usar carregamento lazy
3. Verificar saúde geral: `:checkhealth`

#### Problemas com Git
```vim
:checkhealth gitsigns
```

**Soluções**:
1. Verificar se está em repositório Git
2. Configurar Git corretamente
3. Verificar permissões de arquivo

### Logs e Diagnósticos

#### Arquivos de Log
- **LSP**: `:LspLog`
- **Lazy**: `~/.local/share/nvim/lazy/lazy.nvim.log`
- **Mason**: `~/.local/share/nvim/mason/mason.log`

#### Comandos de Diagnóstico
```vim
:checkhealth          " Diagnóstico geral
:checkhealth lsp      " Específico do LSP
:checkhealth mason    " Mason
:checkhealth telescope " Telescope
:Lazy profile          " Performance dos plugins
```

#### Reset Completo
Se nada funcionar:
```bash
# Backup
mv ~/.config/nvim ~/.config/nvim.broken
mv ~/.local/share/nvim ~/.local/share/nvim.broken

# Reinstalar
git clone https://github.com/XzGuuhXz/Nvim-fusion.git ~/.config/nvim
nvim  # Vai reinstalar tudo
```

---

## 📚 Comandos Úteis

### Gerenciamento de Plugins

| Comando | Função |
|---------|---------|
| `:Lazy` | Abrir interface do Lazy |
| `:Lazy update` | Atualizar todos os plugins |
| `:Lazy sync` | Sincronizar plugins |
| `:Lazy profile` | Ver performance dos plugins |
| `:Lazy log` | Ver logs de mudanças |

### Mason (LSP Management)

| Comando | Função |
|---------|---------|
| `:Mason` | Abrir interface do Mason |
| `:MasonInstall <server>` | Instalar LSP server |
| `:MasonUninstall <server>` | Desinstalar server |
| `:MasonUpdate` | Atualizar todos os servers |
| `:MasonLog` | Ver logs do Mason |

### LSP

| Comando | Função |
|---------|---------|
| `:LspInfo` | Informações dos LSPs ativos |
| `:LspStart` | Iniciar LSP |
| `:LspStop` | Parar LSP |
| `:LspRestart` | Reiniciar LSP |
| `:LspLog` | Ver logs do LSP |

### Treesitter

| Comando | Função |
|---------|---------|
| `:TSUpdate` | Atualizar parsers |
| `:TSInstall <lang>` | Instalar parser |
| `:TSUninstall <lang>` | Desinstalar parser |
| `:TSModuleInfo` | Info sobre módulos |
| `:TSPlayground` | Playground do Treesitter |

### Telescope

| Comando | Função |
|---------|---------|
| `:Telescope` | Listar todos os pickers |
| `:Telescope find_files` | Buscar arquivos |
| `:Telescope live_grep` | Busca em tempo real |
| `:Telescope buffers` | Listar buffers |
| `:Telescope help_tags` | Buscar ajuda |
| `:Telescope commands` | Buscar comandos |
| `:Telescope keymaps` | Listar atalhos |

### Git (Gitsigns)

| Comando | Função |
|---------|---------|
| `:Gitsigns toggle_signs` | Toggle visual de Git |
| `:Gitsigns blame_line` | Blame da linha atual |
| `:Gitsigns preview_hunk` | Preview da mudança |
| `:Gitsigns reset_hunk` | Resetar mudança |
| `:Gitsigns stage_hunk` | Adicionar mudança |

### Diagnósticos

| Comando | Função |
|---------|---------|
| `:lua vim.diagnostic.open_float()` | Mostrar diagnóstico |
| `:lua vim.diagnostic.goto_next()` | Próximo diagnóstico |
| `:lua vim.diagnostic.goto_prev()` | Diagnóstico anterior |
| `:lua vim.diagnostic.setqflist()` | Lista de diagnósticos |

## 🧪 Exemplos de Uso

### Fluxo de Trabalho Típico

#### 1. Abrindo um Projeto
```bash
# Navegar para o projeto
cd ~/meu-projeto

# Abrir Neovim
nvim .

# Ou abrir arquivo específico
nvim src/main.py
```

#### 2. Navegação e Busca
```vim
" Buscar arquivos
<leader>pf  " ou <leader>ff

" Buscar conteúdo
<leader>ps  " ou <leader>fg

" Alternar entre buffers
<Tab> / <S-Tab>

" File explorer
<leader>e
```

#### 3. Editando Código
```vim
" Ir para definição
gd

" Ver documentação
K

" Renomear variável
<leader>rn

" Ações de código
<leader>ca

" Formatar código
<leader>f
```

#### 4. Gerenciando Git
```vim
" Ver mudanças
<leader>hp

" Adicionar mudança
<leader>hs

" Ver blame
<leader>hb
```

### Configurações por Linguagem

#### Python
```python
# ~/.config/nvim/after/ftplugin/python.lua
vim.opt_local.shiftwidth = 4
vim.opt_local.tabstop = 4
vim.opt_local.expandtab = true

-- Atalho para executar Python
vim.keymap.set("n", "<F5>", ":!python %<CR>", { buffer = true, desc = "Run Python" })

-- Atalho para executar com input
vim.keymap.set("n", "<F6>", ":!python % < input.txt<CR>", { buffer = true, desc = "Run with input" })
```

#### JavaScript/TypeScript
```javascript
// ~/.config/nvim/after/ftplugin/javascript.lua
vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2

-- Atalho para executar Node.js
vim.keymap.set("n", "<F5>", ":!node %<CR>", { buffer = true, desc = "Run Node.js" })

-- Atalho para npm scripts
vim.keymap.set("n", "<leader>nr", ":!npm run dev<CR>", { buffer = true, desc = "npm run dev" })
vim.keymap.set("n", "<leader>nt", ":!npm test<CR>", { buffer = true, desc = "npm test" })
```

#### C/C++
```c
// ~/.config/nvim/after/ftplugin/c.lua
vim.opt_local.shiftwidth = 4
vim.opt_local.tabstop = 4

-- Compilar e executar C
vim.keymap.set("n", "<F5>", ":!gcc % -o %< && ./%<<CR>", { buffer = true, desc = "Compile and run" })

-- Apenas compilar
vim.keymap.set("n", "<F6>", ":!gcc % -o %<<CR>", { buffer = true, desc = "Compile only" })
```

### Snippets Personalizados

#### LuaSnip Custom Snippets
Crie `~/.config/nvim/snippets/`:

```lua
-- ~/.config/nvim/snippets/python.lua
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("python", {
  s("main", {
    t({"def main():", "    "}),
    i(1, "pass"),
    t({"", "", "if __name__ == '__main__':", "    main()"}),
  }),
  
  s("class", {
    t("class "),
    i(1, "ClassName"),
    t({":", "    def __init__(self"}),
    i(2),
    t({"):", "        "}),
    i(3, "pass"),
  }),
})
```

---

## 🔧 Configurações Avançadas

### Performance Optimization

#### Configurações de Performance em init.lua
```lua
-- Otimizações de performance
vim.opt.updatetime = 250          -- Tempo de update mais rápido
vim.opt.timeoutlen = 300          -- Timeout para which-key
vim.opt.lazyredraw = true         -- Não redesenhar durante macros
vim.opt.synmaxcol = 240           -- Limitar syntax highlighting

-- Configurações de memória
vim.opt.hidden = true             -- Permitir buffers ocultos
vim.opt.history = 100             -- Limitar histórico
vim.opt.undolevels = 100          -- Limitar níveis de undo

-- Configurações de arquivos
vim.opt.backup = false            -- Sem backups
vim.opt.swapfile = false          -- Sem swap files
vim.opt.writebackup = false       -- Sem writebackup
```

#### Lazy Loading Personalizado
```lua
-- Em lua/plugins/exemplo.lua
{
  "plugin/pesado",
  lazy = true,
  event = "BufReadPost",           -- Carregar após ler buffer
  cmd = { "ComandoPlugin" },       -- Carregar com comando
  ft = { "python", "javascript" }, -- Carregar por filetype
  keys = {                         -- Carregar com tecla
    { "<leader>p", "<cmd>Plugin<cr>", desc = "Plugin" },
  },
}
```

### Configurações de LSP Avançadas

#### Custom LSP Settings
```lua
-- Em lua/plugins/lsp/init.lua

-- Python com configurações avançadas
require("lspconfig").pyright.setup({
  capabilities = capabilities,
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "strict",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "workspace",
      },
    },
  },
  on_attach = function(client, bufnr)
    -- Configurações específicas para Python
    vim.keymap.set("n", "<leader>oi", ":PyrightOrganizeImports<CR>", 
      { buffer = bufnr, desc = "Organize imports" })
  end,
})

-- TypeScript com inlay hints
require("lspconfig").ts_ls.setup({
  capabilities = capabilities,
  settings = {
    typescript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
        includeInlayParameterNameHintsWhenArgumentMatchesName = true,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = true,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
        includeInlayEnumMemberValueHints = true,
      },
    },
  },
})
```

#### LSP Formatting com Multiple Formatters
```lua
-- Configurar formatação com conform.nvim
{
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        javascript = { { "prettierd", "prettier" } },
        typescript = { { "prettierd", "prettier" } },
        html = { "prettier" },
        css = { "prettier" },
        json = { "prettier" },
      },
    })
    
    vim.keymap.set({ "n", "v" }, "<leader>f", function()
      require("conform").format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      })
    end, { desc = "Format file or range" })
  end,
}
```

### Telescope Configurações Avançadas

#### Custom Pickers
```lua
-- Em lua/plugins/tools/init.lua
local builtin = require('telescope.builtin')
local utils = require('telescope.utils')

-- Buscar arquivos no diretório atual
vim.keymap.set('n', '<leader>pfc', function()
  builtin.find_files({ cwd = utils.buffer_dir() })
end, { desc = "Find files in current dir" })

-- Buscar apenas arquivos Git modificados
vim.keymap.set('n', '<leader>pgm', function()
  builtin.git_status()
end, { desc = "Git modified files" })

-- Buscar no histórico de comandos
vim.keymap.set('n', '<leader>ph', function()
  builtin.command_history()
end, { desc = "Command history" })

-- Buscar símbolos no workspace
vim.keymap.set('n', '<leader>ps', function()
  builtin.lsp_workspace_symbols()
end, { desc = "Workspace symbols" })
```

#### Telescope Extensions
```lua
-- Adicionar extensions úteis
{
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
  },
  config = function()
    require("telescope").setup({
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        },
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {}
        },
        file_browser = {
          theme = "ivy",
          hijack_netrw = true,
        },
      },
    })
    
    -- Carregar extensions
    require("telescope").load_extension("fzf")
    require("telescope").load_extension("ui-select")
    require("telescope").load_extension("file_browser")
    
    -- Atalhos para extensions
    vim.keymap.set("n", "<leader>fb", ":Telescope file_browser<CR>", 
      { desc = "File browser" })
  end,
}
```

### Git Integration Avançada

#### Fugitive Integration
```lua
-- Adicionar vim-fugitive para Git avançado
{
  "tpope/vim-fugitive",
  cmd = { "Git", "Gdiffsplit", "Gread", "Gwrite", "Ggrep", "GMove", "GDelete", "GBrowse", "GRemove", "GRename", "Glgrep", "Gedit" },
  keys = {
    { "<leader>gs", "<cmd>Git<cr>", desc = "Git status" },
    { "<leader>gd", "<cmd>Gdiffsplit<cr>", desc = "Git diff" },
    { "<leader>gc", "<cmd>Git commit<cr>", desc = "Git commit" },
    { "<leader>gp", "<cmd>Git push<cr>", desc = "Git push" },
    { "<leader>gl", "<cmd>Git pull<cr>", desc = "Git pull" },
  },
}

-- Neogit para interface moderna
{
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = true,
  keys = {
    { "<leader>gg", "<cmd>Neogit<cr>", desc = "Neogit" },
  },
}
```

### Session Management

#### Auto-session
```lua
{
  "rmagatti/auto-session",
  config = function()
    require("auto-session").setup({
      log_level = "error",
      auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      auto_session_use_git_branch = false,
      
      auto_session_enable_last_session = false,
      auto_session_root_dir = vim.fn.stdpath("data") .. "/sessions/",
      auto_session_enabled = true,
      auto_save_enabled = nil,
      auto_restore_enabled = nil,
      
      cwd_change_handling = {
        restore_upcoming_session = true,
        pre_cwd_changed_hook = nil,
        post_cwd_changed_hook = function()
          require("lualine").refresh()
        end,
      },
    })
    
    -- Atalhos para sessões
    vim.keymap.set("n", "<leader>ss", "<cmd>SessionSave<cr>", { desc = "Save session" })
    vim.keymap.set("n", "<leader>sr", "<cmd>SessionRestore<cr>", { desc = "Restore session" })
    vim.keymap.set("n", "<leader>sd", "<cmd>SessionDelete<cr>", { desc = "Delete session" })
  end,
}
```

### Terminal Integration

#### ToggleTerm
```lua
{
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = "float",
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
    })
    
    -- Terminal personalizado para diferentes usos
    local Terminal = require("toggleterm.terminal").Terminal
    
    -- Terminal para Git
    local gitui = Terminal:new({
      cmd = "gitui",
      dir = "git_dir",
      direction = "float",
      float_opts = {
        border = "double",
      },
      on_open = function(term)
        vim.cmd("startinsert!")
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
      end,
    })
    
    -- Terminal para Node.js
    local node = Terminal:new({ cmd = "node", hidden = true })
    
    -- Terminal para Python
    local python = Terminal:new({ cmd = "python", hidden = true })
    
    -- Atalhos
    vim.keymap.set("n", "<leader>tg", function() gitui:toggle() end, { desc = "GitUI" })
    vim.keymap.set("n", "<leader>tn", function() node:toggle() end, { desc = "Node REPL" })
    vim.keymap.set("n", "<leader>tp", function() python:toggle() end, { desc = "Python REPL" })
    vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "Float terminal" })
    vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>", { desc = "Horizontal terminal" })
    vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<cr>", { desc = "Vertical terminal" })
  end,
}
```

---

## 🚀 Plugins Adicionais Recomendados

### Development Tools

#### Database Integration
```lua
-- DBUI para gerenciamento de banco de dados
{
  "kristijanhusak/vim-dadbod-ui",
  dependencies = {
    { "tpope/vim-dadbod", lazy = true },
    { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
  },
  cmd = {
    "DBUI",
    "DBUIToggle",
    "DBUIAddConnection",
    "DBUIFindBuffer",
  },
  init = function()
    vim.g.db_ui_use_nerd_fonts = 1
  end,
  keys = {
    { "<leader>db", "<cmd>DBUIToggle<cr>", desc = "Database UI" },
  },
}
```

#### REST Client
```lua
-- rest.nvim para testar APIs
{
  "rest-nvim/rest.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("rest-nvim").setup({
      result_split_horizontal = false,
      result_split_in_place = false,
      skip_ssl_verification = false,
      encode_url = true,
      highlight = {
        enabled = true,
        timeout = 150,
      },
      result = {
        show_url = true,
        show_curl_command = false,
        show_http_info = true,
        show_headers = true,
        formatters = {
          json = "jq",
          html = function(body)
            return vim.fn.system({"tidy", "-i", "-q", "-"}, body)
          end,
        },
      },
    })
  end,
  keys = {
    { "<leader>rr", "<cmd>RestNvim<cr>", desc = "Run REST request" },
    { "<leader>rp", "<cmd>RestNvimPreview<cr>", desc = "Preview REST request" },
    { "<leader>rl", "<cmd>RestNvimLast<cr>", desc = "Re-run last request" },
  },
}
```

#### Markdown Support
```lua
-- Markdown preview e edição
{
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = function() vim.fn["mkdp#util#install"]() end,
  keys = {
    { "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown Preview" },
  },
}

{
  "lukas-reineke/headlines.nvim",
  dependencies = "nvim-treesitter/nvim-treesitter",
  ft = { "markdown", "org" },
  config = true,
}
```

#### Code Documentation
```lua
-- Neogen para geração de documentação
{
  "danymat/neogen",
  dependencies = "nvim-treesitter/nvim-treesitter",
  config = function()
    require("neogen").setup({
      snippet_engine = "luasnip",
      languages = {
        python = {
          template = {
            annotation_convention = "google_docstrings",
          },
        },
        javascript = {
          template = {
            annotation_convention = "jsdoc",
          },
        },
      },
    })
  end,
  keys = {
    { "<leader>nf", function() require("neogen").generate({ type = "func" }) end, desc = "Generate function doc" },
    { "<leader>nc", function() require("neogen").generate({ type = "class" }) end, desc = "Generate class doc" },
    { "<leader>nt", function() require("neogen").generate({ type = "type" }) end, desc = "Generate type doc" },
  },
}
```

### Productivity Enhancements

#### Project Management
```lua
-- Project.nvim para gerenciamento de projetos
{
  "ahmedkhalf/project.nvim",
  config = function()
    require("project_nvim").setup({
      detection_methods = { "lsp", "pattern" },
      patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
      ignore_lsp = {},
      exclude_dirs = {},
      show_hidden = false,
      silent_chdir = true,
      scope_chdir = "global",
    })
  end,
  keys = {
    { "<leader>fp", "<cmd>Telescope projects<cr>", desc = "Projects" },
  },
}

-- Telescope integration
require("telescope").load_extension("projects")
```

#### File Navigation
```lua
-- Harpoon para navegação rápida entre arquivos
{
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()
    
    vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end, { desc = "Harpoon add file" })
    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon menu" })
    
    vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end, { desc = "Harpoon file 1" })
    vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end, { desc = "Harpoon file 2" })
    vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end, { desc = "Harpoon file 3" })
    vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end, { desc = "Harpoon file 4" })
  end,
}
```

#### Debugging Support
```lua
-- nvim-dap para debugging
{
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "theHamsta/nvim-dap-virtual-text",
    "nvim-neotest/nvim-nio",
    "williamboman/mason.nvim",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")
    
    require("dapui").setup()
    require("nvim-dap-virtual-text").setup()
    
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end
    
    -- Keymaps
    vim.keymap.set("n", "<F5>", dap.continue, { desc = "Debug: Continue" })
    vim.keymap.set("n", "<F10>", dap.step_over, { desc = "Debug: Step Over" })
    vim.keymap.set("n", "<F11>", dap.step_into, { desc = "Debug: Step Into" })
    vim.keymap.set("n", "<F12>", dap.step_out, { desc = "Debug: Step Out" })
    vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, { desc = "Debug: Toggle Breakpoint" })
    vim.keymap.set("n", "<leader>B", function()
      dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
    end, { desc = "Debug: Conditional Breakpoint" })
  end,
}
```

---

## 🎓 Dicas e Truques

### Workflows Eficientes

#### 1. Workflow de Desenvolvimento Python
```vim
" Abrir projeto Python
:cd ~/meu-projeto-python
:NvimTreeOpen

" Buscar arquivo
<leader>pf

" Ver estrutura do código
:Telescope lsp_document_symbols

" Executar testes
:!python -m pytest

" Debugging
<F5> " Iniciar debug
<leader>b " Toggle breakpoint
```

#### 2. Workflow para Web Development
```vim
" Projeto React/Vue
:cd ~/web-project
<leader>ff

" Live server (se configurado)
:!npm run dev

" Formatar código
<leader>f

" Ver console do navegador integrado
<C-\> " ToggleTerm
```

#### 3. Workflow para Git
```vim
" Ver status
<leader>gs " ou :Git

" Ver mudanças
<leader>hp " Preview hunk
<leader>hs " Stage hunk

" Commit
<leader>gc " Git commit

" Push
<leader>gp " ou :Git push
```

### Teclas Rápidas Personalizadas

#### Movimento Eficiente
```lua
-- Adicionar em init.lua

-- Mover para início/fim da linha
vim.keymap.set({"n", "v"}, "H", "^", { desc = "Go to start of line" })
vim.keymap.set({"n", "v"}, "L", "$", { desc = "Go to end of line" })

-- Centralizar após movimento
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up centered" })

-- Quick save/quit
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Quick save" })
vim.keymap.set("n", "<leader>Q", ":qa!<CR>", { desc = "Force quit all" })
```

#### Edição Produtiva
```lua
-- Duplicar linha
vim.keymap.set("n", "<C-d>", "yyp", { desc = "Duplicate line" })

-- Mover linhas alt+j/k
vim.keymap.set("n", "<M-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<M-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Selecionar tudo
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })

-- Busca e substituição rápida
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", 
  { desc = "Replace word under cursor" })
```

### Configurações por Projeto

#### .nvim.lua local
Crie um arquivo `.nvim.lua` na raiz do projeto:

```lua
-- .nvim.lua
vim.opt_local.tabstop = 4
vim.opt_local.shiftwidth = 4

-- Atalhos específicos do projeto
vim.keymap.set("n", "<leader>r", ":!python main.py<CR>", { desc = "Run main.py" })
vim.keymap.set("n", "<leader>t", ":!python -m pytest tests/<CR>", { desc = "Run tests" })

-- LSP settings específicos
require("lspconfig").pyright.setup({
  settings = {
    python = {
      pythonPath = ".venv/bin/python",
    },
  },
})
```

#### Variáveis de Ambiente
```lua
-- ~/.config/nvim/lua/project-configs.lua
local M = {}

function M.setup_python_project()
  vim.env.PYTHONPATH = vim.fn.getcwd() .. "/src"
  vim.keymap.set("n", "<leader>tv", ":!python -m venv .venv<CR>", { desc = "Create venv" })
  vim.keymap.set("n", "<leader>ta", ":!source .venv/bin/activate<CR>", { desc = "Activate venv" })
end

function M.setup_node_project()
  vim.keymap.set("n", "<leader>ni", ":!npm install<CR>", { desc = "npm install" })
  vim.keymap.set("n", "<leader>nd", ":!npm run dev<CR>", { desc = "npm run dev" })
  vim.keymap.set("n", "<leader>nb", ":!npm run build<CR>", { desc = "npm run build" })
end

return M
```

### Automações Úteis

#### Auto-commands
```lua
-- ~/.config/nvim/lua/autocommands.lua

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Highlight ao copiar
augroup("YankHighlight", { clear = true })
autocmd("TextYankPost", {
  group = "YankHighlight",
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = "1000" })
  end,
})

-- Remover whitespace ao salvar
augroup("TrimWhitespace", { clear = true })
autocmd("BufWritePre", {
  group = "TrimWhitespace",
  pattern = "*",
  command = "%s/\\s\\+$//e",
})

-- Auto-save ao perder foco
augroup("AutoSave", { clear = true })
autocmd("FocusLost", {
  group = "AutoSave",
  pattern = "*",
  command = "silent! wa",
})

-- Fechar automaticamente quickfix se for o último buffer
augroup("QuitQuickfix", { clear = true })
autocmd("WinEnter", {
  group = "QuitQuickfix",
  callback = function()
    if vim.fn.winnr('
  ) == 1 and vim.bo.buftype == "quickfix" then
      vim.cmd("q")
    end
  end,
})

-- Auto-resize splits quando a janela for redimensionada  
augroup("ResizeSplits", { clear = true })
autocmd("VimResized", {
  group = "ResizeSplits",
  pattern = "*",
  command = "tabdo wincmd =",
})

-- Abrir help em split vertical
augroup("HelpWindow", { clear = true })
autocmd("BufWinEnter", {
  group = "HelpWindow",
  pattern = { "*.txt" },
  callback = function()
    if vim.bo.filetype == 'help' then
      vim.cmd("wincmd L")
    end
  end,
})

-- Carregar em init.lua
require("autocommands")
```

#### Funções Customizadas
```lua
-- ~/.config/nvim/lua/functions.lua

local M = {}

-- Função para alternar transparência
function M.toggle_transparency()
  local current_bg = vim.api.nvim_get_hl_by_name("Normal", true).background
  if current_bg then
    vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
    vim.cmd("hi NonText guibg=NONE ctermbg=NONE")
    vim.print("Transparency ON")
  else
    vim.cmd("colorscheme tokyonight")
    vim.print("Transparency OFF")
  end
end

-- Função para contar palavras
function M.word_count()
  local words = vim.fn.wordcount()
  vim.print("Words: " .. words.words .. ", Characters: " .. words.chars)
end

-- Função para limpar buffers não utilizados
function M.close_unused_buffers()
  local current_buf = vim.api.nvim_get_current_buf()
  local all_bufs = vim.api.nvim_list_bufs()
  
  for _, buf in ipairs(all_bufs) do
    if buf ~= current_buf and vim.api.nvim_buf_is_loaded(buf) then
      local buf_name = vim.api.nvim_buf_get_name(buf)
      if buf_name == "" or not vim.loop.fs_stat(buf_name) then
        vim.api.nvim_buf_delete(buf, { force = true })
      end
    end
  end
  vim.print("Unused buffers closed")
end

-- Função para criar arquivo com diretórios
function M.create_file_with_dirs(file_path)
  local dir = vim.fn.fnamemodify(file_path, ":h")
  if vim.fn.isdirectory(dir) == 0 then
    vim.fn.mkdir(dir, "p")
  end
  vim.cmd("edit " .. file_path)
end

-- Função para backup de configuração
function M.backup_config()
  local config_path = vim.fn.stdpath("config")
  local backup_path = os.getenv("HOME") .. "/nvim-backup-" .. os.date("%Y%m%d-%H%M%S")
  vim.fn.system("cp -r " .. config_path .. " " .. backup_path)
  vim.print("Config backed up to: " .. backup_path)
end

-- Mapeamentos para as funções
vim.keymap.set("n", "<leader>tt", M.toggle_transparency, { desc = "Toggle transparency" })
vim.keymap.set("n", "<leader>wc", M.word_count, { desc = "Word count" })
vim.keymap.set("n", "<leader>bu", M.close_unused_buffers, { desc = "Close unused buffers" })
vim.keymap.set("n", "<leader>cf", function()
  local file_path = vim.fn.input("File path: ")
  if file_path ~= "" then
    M.create_file_with_dirs(file_path)
  end
end, { desc = "Create file with directories" })
vim.keymap.set("n", "<leader>bc", M.backup_config, { desc = "Backup config" })

return M
```

---

## 🔒 Segurança e Backup

### Estratégias de Backup

#### 1. Backup Automatizado
```bash
#!/bin/bash
# ~/.local/bin/nvim-backup.sh

BACKUP_DIR="$HOME/Documents/nvim-backups"
CONFIG_DIR="$HOME/.config/nvim"
DATE=$(date +%Y%m%d-%H%M%S)

# Criar diretório de backup se não existir
mkdir -p "$BACKUP_DIR"

# Fazer backup da configuração
tar -czf "$BACKUP_DIR/nvim-config-$DATE.tar.gz" -C "$HOME/.config" nvim

# Fazer backup dos dados
tar -czf "$BACKUP_DIR/nvim-data-$DATE.tar.gz" -C "$HOME/.local/share" nvim

# Limpar backups antigos (manter apenas os últimos 10)
cd "$BACKUP_DIR" && ls -t nvim-config-*.tar.gz | tail -n +11 | xargs -r rm
cd "$BACKUP_DIR" && ls -t nvim-data-*.tar.gz | tail -n +11 | xargs -r rm

echo "Backup completed: $DATE"
```

Adicionar ao crontab:
```bash
# Executar todo dia às 2h da manhã
0 2 * * * /home/usuario/.local/bin/nvim-backup.sh
```

#### 2. Versionamento com Git
```bash
# Inicializar repositório na configuração
cd ~/.config/nvim
git init
git add .
git commit -m "Initial configuration"

# Adicionar remote (opcional)
git remote add origin https://github.com/seu-usuario/nvim-config.git
git push -u origin main
```

### Configurações Sensíveis

#### Variáveis de Ambiente
```lua
-- ~/.config/nvim/lua/secrets.lua (adicionar ao .gitignore)
local M = {}

M.api_keys = {
  openai = os.getenv("OPENAI_API_KEY"),
  github = os.getenv("GITHUB_TOKEN"),
}

M.databases = {
  dev = os.getenv("DEV_DATABASE_URL"),
  test = os.getenv("TEST_DATABASE_URL"),
}

return M
```

#### .gitignore para configuração
```gitignore
# ~/.config/nvim/.gitignore
lua/secrets.lua
*.log
lazy-lock.json
.DS_Store
*.swp
*.swo
*~
```

---

## 📊 Monitoramento e Performance

### Profiling de Performance

#### Startup Time
```bash
# Medir tempo de inicialização
nvim --startuptime startup.log +q
tail startup.log

# Ou usar hyperfine para testes repetidos
hyperfine 'nvim --headless +q'
```

#### Lazy Profile
```vim
:Lazy profile
```

### Memory Usage
```lua
-- Função para monitorar memória
function _G.memory_usage()
  collectgarbage("collect")
  local mem = collectgarbage("count")
  vim.print(string.format("Memory usage: %.2f MB", mem / 1024))
end

vim.keymap.set("n", "<leader>mem", ":lua memory_usage()<CR>", { desc = "Show memory usage" })
```

### Health Checks Personalizados
```lua
-- ~/.config/nvim/lua/health/custom.lua
local M = {}

function M.check()
  vim.health.report_start("Custom Configuration")
  
  -- Verificar se ripgrep está instalado
  if vim.fn.executable("rg") == 1 then
    vim.health.report_ok("ripgrep is installed")
  else
    vim.health.report_error("ripgrep is not installed", "Install with: brew install ripgrep")
  end
  
  -- Verificar Node.js
  if vim.fn.executable("node") == 1 then
    local version = vim.fn.system("node --version"):gsub("\n", "")
    vim.health.report_ok("Node.js " .. version .. " is installed")
  else
    vim.health.report_warn("Node.js not found", "Some LSP servers require Node.js")
  end
  
  -- Verificar fonte Nerd Font
  local font_check = vim.fn.system("fc-list | grep -i nerd")
  if font_check ~= "" then
    vim.health.report_ok("Nerd Font is installed")
  else
    vim.health.report_warn("Nerd Font not detected", "Icons may not display correctly")
  end
  
  -- Verificar configurações críticas
  if vim.g.mapleader == " " then
    vim.health.report_ok("Leader key is set to space")
  else
    vim.health.report_error("Leader key is not set to space")
  end
end

return M
```

Executar: `:checkhealth custom`

---

## 🌟 Recursos Avançados

### Macros e Automação

#### Macros Úteis
```vim
" Macro para adicionar console.log em JavaScript
" Posicionar cursor na variável e executar
qa                    " Iniciar gravação no registro 'a'
yiw                   " Copiar palavra
o                     " Nova linha
console.log('<Esc>pa: ', <Esc>pa);<Esc>  " Inserir console.log
q                     " Parar gravação

" Usar com @a ou @@
```

#### Snippets Personalizados Avançados
```lua
-- ~/.config/nvim/snippets/react.lua
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

-- Snippet para componente React funcional
ls.add_snippets("javascript", {
  s("rfc", {
    t("import React from 'react';"),
    t({"", "", "const "}),
    i(1, "ComponentName"),
    t(" = () => {"),
    t({"", "  return (", "    <div>"}),
    i(2, "content"),
    t({"</div>", "  );", "};", "", "export default "}),
    f(function(args) return args[1][1] end, {1}),
    t(";"),
  }),
  
  -- Snippet para useState hook
  s("us", {
    t("const ["),
    i(1, "state"),
    t(", set"),
    f(function(args)
      local state = args[1][1]
      return state:sub(1,1):upper()..state:sub(2)
    end, {1}),
    t("] = useState("),
    i(2, "initialValue"),
    t(");"),
  }),
})
```

### Custom Commands

#### Comandos Úteis
```lua
-- ~/.config/nvim/lua/commands.lua

-- Comando para recarregar configuração
vim.api.nvim_create_user_command("ReloadConfig", function()
  for name,_ in pairs(package.loaded) do
    if name:match('^plugins') or name:match('^config') then
      package.loaded[name] = nil
    end
  end
  dofile(vim.env.MYVIMRC)
  vim.notify("Configuration reloaded!", vim.log.levels.INFO)
end, {})

-- Comando para limpar cache de plugins
vim.api.nvim_create_user_command("CleanCache", function()
  local cache_dir = vim.fn.stdpath("cache")
  vim.fn.delete(cache_dir, "rf")
  vim.notify("Cache cleared!", vim.log.levels.INFO)
end, {})

-- Comando para mostrar informações do arquivo
vim.api.nvim_create_user_command("FileInfo", function()
  local file = vim.fn.expand("%:p")
  local size = vim.fn.getfsize(file)
  local lines = vim.fn.line("$")
  local filetype = vim.bo.filetype
  
  local info = string.format([[
File: %s
Size: %d bytes
Lines: %d
Filetype: %s
Modified: %s
]], file, size, lines, filetype, vim.fn.strftime("%Y-%m-%d %H:%M:%S", vim.fn.getftime(file)))
  
  vim.notify(info, vim.log.levels.INFO)
end, {})

-- Comando para formatar JSON
vim.api.nvim_create_user_command("FormatJSON", function()
  if vim.bo.filetype == "json" then
    vim.cmd("%!jq .")
  else
    vim.notify("Not a JSON file!", vim.log.levels.WARN)
  end
end, {})

-- Comando para criar template de arquivo
vim.api.nvim_create_user_command("Template", function(opts)
  local templates = {
    python = {
      "#!/usr/bin/env python3",
      '"""',
      "Module description",
      '"""',
      "",
      "",
      'if __name__ == "__main__":',
      "    pass",
    },
    javascript = {
      '/**',
      ' * File description',
      ' */',
      "",
      "",
    },
    html = {
      '<!DOCTYPE html>',
      '<html lang="en">',
      '<head>',
      '    <meta charset="UTF-8">',
      '    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
      '    <title>Document</title>',
      '</head>',
      '<body>',
      '    ',
      '</body>',
      '</html>',
    },
  }
  
  local template_type = opts.args
  if templates[template_type] then
    vim.api.nvim_buf_set_lines(0, 0, -1, false, templates[template_type])
    vim.bo.filetype = template_type
  else
    vim.notify("Template not found: " .. template_type, vim.log.levels.ERROR)
  end
end, {
  nargs = 1,
  complete = function()
    return { "python", "javascript", "html" }
  end,
})
```

### Integrações Externas

#### Integração com Tmux
```lua
-- ~/.config/nvim/lua/tmux-integration.lua
local M = {}

function M.is_tmux()
  return os.getenv("TMUX") ~= nil
end

function M.tmux_send_command(cmd)
  if M.is_tmux() then
    vim.fn.system("tmux send-keys -t right '" .. cmd .. "' Enter")
  else
    vim.notify("Not in tmux session", vim.log.levels.WARN)
  end
end

function M.setup_tmux_keymaps()
  if M.is_tmux() then
    vim.keymap.set("n", "<leader>ts", function()
      local cmd = vim.fn.input("Tmux command: ")
      if cmd ~= "" then
        M.tmux_send_command(cmd)
      end
    end, { desc = "Send command to tmux" })
    
    vim.keymap.set("n", "<leader>tr", function()
      M.tmux_send_command("clear && " .. vim.fn.expand("%:p"))
    end, { desc = "Run current file in tmux" })
  end
end

return M
```

#### Integração com Docker
```lua
-- ~/.config/nvim/lua/docker-integration.lua
local M = {}

function M.docker_exec(container, cmd)
  local full_cmd = string.format("docker exec -it %s %s", container, cmd)
  vim.fn.system(full_cmd)
end

function M.setup_docker_commands()
  vim.api.nvim_create_user_command("DockerExec", function(opts)
    local args = vim.split(opts.args, " ", { trimempty = true })
    if #args >= 2 then
      local container = args[1]
      local cmd = table.concat(vim.list_slice(args, 2), " ")
      M.docker_exec(container, cmd)
    else
      vim.notify("Usage: DockerExec <container> <command>", vim.log.levels.ERROR)
    end
  end, { nargs = "+", complete = "shellcmd" })
  
  -- Atalho para executar no container de desenvolvimento
  vim.keymap.set("n", "<leader>de", function()
    local cmd = vim.fn.input("Docker exec: ")
    if cmd ~= "" then
      M.docker_exec("dev", cmd)
    end
  end, { desc = "Docker exec in dev container" })
end

return M
```

---

## 🎯 Casos de Uso Específicos

### Desenvolvimento Python

#### Configuração Completa para Python
```lua
-- ~/.config/nvim/after/ftplugin/python.lua

-- Configurações específicas do Python
vim.opt_local.shiftwidth = 4
vim.opt_local.tabstop = 4
vim.opt_local.expandtab = true
vim.opt_local.textwidth = 88  -- Black formatter width

-- Função para detectar ambiente virtual
local function get_python_path()
  local venv_path = vim.fn.getcwd() .. "/.venv/bin/python"
  if vim.fn.filereadable(venv_path) == 1 then
    return venv_path
  end
  return "python3"
end

-- Configurar LSP com ambiente virtual
require("lspconfig").pyright.setup({
  settings = {
    python = {
      pythonPath = get_python_path(),
      analysis = {
        typeCheckingMode = "strict",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      },
    },
  },
})

-- Atalhos específicos do Python
local opts = { buffer = true, silent = true }

-- Executar arquivo Python
vim.keymap.set("n", "<F5>", function()
  local python_path = get_python_path()
  vim.cmd("!" .. python_path .. " %")
end, vim.tbl_extend("force", opts, { desc = "Run Python file" }))

-- Executar com input
vim.keymap.set("n", "<F6>", function()
  local python_path = get_python_path()
  vim.cmd("!" .. python_path .. " % < input.txt")
end, vim.tbl_extend("force", opts, { desc = "Run Python with input" }))

-- Executar testes
vim.keymap.set("n", "<leader>tt", ":!python -m pytest<CR>", 
  vim.tbl_extend("force", opts, { desc = "Run all tests" }))

vim.keymap.set("n", "<leader>tf", function()
  vim.cmd("!python -m pytest " .. vim.fn.expand("%"))
end, vim.tbl_extend("force", opts, { desc = "Run current test file" }))

-- REPL Python
vim.keymap.set("n", "<leader>tp", ":!python -i %<CR>", 
  vim.tbl_extend("force", opts, { desc = "Python REPL" }))

-- Criar ambiente virtual
vim.keymap.set("n", "<leader>ve", ":!python -m venv .venv<CR>", 
  vim.tbl_extend("force", opts, { desc = "Create virtual environment" }))

-- Instalar requirements
vim.keymap.set("n", "<leader>vi", ":!.venv/bin/pip install -r requirements.txt<CR>", 
  vim.tbl_extend("force", opts, { desc = "Install requirements" }))

-- Congelar dependências
vim.keymap.set("n", "<leader>vf", ":!.venv/bin/pip freeze > requirements.txt<CR>", 
  vim.tbl_extend("force", opts, { desc = "Freeze requirements" }))
```

### Desenvolvimento Web (React/Vue/Angular)

#### Configuração para JavaScript/TypeScript
```lua
-- ~/.config/nvim/after/ftplugin/javascript.lua

vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2

local opts = { buffer = true, silent = true }

-- NPM/Yarn commands
vim.keymap.set("n", "<leader>ni", ":!npm install<CR>", 
  vim.tbl_extend("force", opts, { desc = "npm install" }))
vim.keymap.set("n", "<leader>nd", ":!npm run dev<CR>", 
  vim.tbl_extend("force", opts, { desc = "npm run dev" }))
vim.keymap.set("n", "<leader>nb", ":!npm run build<CR>", 
  vim.tbl_extend("force", opts, { desc = "npm run build" }))
vim.keymap.set("n", "<leader>nt", ":!npm test<CR>", 
  vim.tbl_extend("force", opts, { desc = "npm test" }))

-- Node.js execution
vim.keymap.set("n", "<F5>", ":!node %<CR>", 
  vim.tbl_extend("force", opts, { desc = "Run with Node.js" }))

-- Browser preview (se tiver live-server instalado)
vim.keymap.set("n", "<leader>bp", ":!live-server .<CR>", 
  vim.tbl_extend("force", opts, { desc = "Browser preview" }))

-- ESLint fix
vim.keymap.set("n", "<leader>ef", ":!npx eslint --fix %<CR>", 
  vim.tbl_extend("force", opts, { desc = "ESLint fix" }))

-- Prettier format
vim.keymap.set("n", "<leader>pf", ":!npx prettier --write %<CR>", 
  vim.tbl_extend("force", opts, { desc = "Prettier format" }))
```

### Desenvolvimento C/C++

#### Configuração para C/C++
```lua
-- ~/.config/nvim/after/ftplugin/c.lua

vim.opt_local.shiftwidth = 4
vim.opt_local.tabstop = 4
vim.opt_local.cindent = true

local opts = { buffer = true, silent = true }

-- Compilar e executar
vim.keymap.set("n", "<F5>", function()
  local file = vim.fn.expand("%:r")
  vim.cmd("!gcc -Wall -g % -o " .. file .. " && ./" .. file)
end, vim.tbl_extend("force", opts, { desc = "Compile and run" }))

-- Apenas compilar
vim.keymap.set("n", "<F6>", function()
  local file = vim.fn.expand("%:r")
  vim.cmd("!gcc -Wall -g % -o " .. file)
end, vim.tbl_extend("force", opts, { desc = "Compile only" }))

-- Debug com GDB
vim.keymap.set("n", "<F7>", function()
  local file = vim.fn.expand("%:r")
  vim.cmd("!gcc -Wall -g % -o " .. file .. " && gdb ./" .. file)
end, vim.tbl_extend("force", opts, { desc = "Debug with GDB" }))

-- Valgrind para memory check
vim.keymap.set("n", "<F8>", function()
  local file = vim.fn.expand("%:r")
  vim.cmd("!gcc -Wall -g % -o " .. file .. " && valgrind --leak-check=full ./" .. file)
end, vim.tbl_extend("force", opts, { desc = "Memory check with Valgrind" }))

-- Make project
vim.keymap.set("n", "<leader>m", ":!make<CR>", 
  vim.tbl_extend("force", opts, { desc = "Make project" }))

-- Clean build
vim.keymap.set("n", "<leader>mc", ":!make clean<CR>", 
  vim.tbl_extend("force", opts, { desc = "Make clean" }))
```

---

## 📖 Referências e Recursos

### Documentação Oficial

- [Neovim Documentation](https://neovim.io/doc/)
- [Lua in Neovim](https://neovim.io/doc/user/lua.html)
- [LSP Configuration](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)
- [Treesitter Documentation](https://tree-sitter.github.io/tree-sitter/)

### Plugins Utilizados

| Plugin | Repositório | Documentação |
|--------|-------------|--------------|
| lazy.nvim | [folke/lazy.nvim](https://github.com/folke/lazy.nvim) | [Docs](https://lazy.folke.io/) |
| telescope.nvim | [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | [Docs](https://github.com/nvim-telescope/telescope.nvim/blob/master/README.md) |
| nvim-lspconfig | [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | [Configs](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md) |
| nvim-cmp | [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | [Wiki](https://github.com/hrsh7th/nvim-cmp/wiki) |
| tokyonight.nvim | [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim) | [README](https://github.com/folke/tokyonight.nvim/blob/main/README.md) |
| lualine.nvim | [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | [Wiki](https://github.com/nvim-lualine/lualine.nvim/wiki) |

### Recursos de Aprendizado

#### Neovim/Vim
- [Learn Vim Progressively](https://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/)
- [Vim Adventures](https://vim-adventures.com/) - Jogo para aprender Vim
- [Vimtutor](https://neovim.io/doc/user/usr_01.html#tutor) - Tutorial interativo (:Tutor)

#### Lua
- [Programming in Lua](https://www.lua.org/pil/)
- [Learn Lua in Y Minutes](https://learnxinyminutes.com/docs/lua/)
- [Lua 5.1 Reference Manual](https://www.lua.org/manual/5.1/)

#### LSP
- [Language Server Protocol Specification](https://microsoft.github.io/language-server-protocol/)
- [LSP Servers List](https://langserver.org/)

### Comunidade e Suporte

- [r/neovim](https://www.reddit.com/r/neovim/) - Reddit community
- [Neovim Discussions](https://github.com/neovim/neovim/discussions) - GitHub Discussions
- [Neovim Discord](https://discord.gg/neovim) - Discord server

### Configurações Inspiradoras

- [LunarVim](https://github.com/LunarVim/LunarVim)
- [NvChad](https://github.com/NvChad/NvChad)
- [LazyVim](https://github.com/LazyVim/LazyVim)
- [AstroNvim](https://github.com/AstroNvim/AstroNvim)

---

## 🤝 Contribuindo

### Como Contribuir

1. **Fork o Projeto**
   ```bash
   git clone https://github.com/XzGuuhXz/Nvim-fusion.git
   cd Nvim-fusion
   ```

2. **Criar Branch para Feature**
   ```bash
   git checkout -b feature/nova-funcionalidade
   ```

3. **Fazer Alterações**
   - Siga as convenções de código existentes
   - Teste suas alterações
   - Adicione documentação se necessário

4. **Commit das Alterações**
   ```bash
   git add .
   git commit -m "feat: adicionar nova funcionalidade"
   ```

5. **Push e Pull Request**
   ```bash
   git push origin feature/nova-funcionalidade
   ```

### Diretrizes de Contribuição

#### Estrutura de Commits
Use [Conventional Commits](https://www.conventionalcommits.org/):

- `feat:` Nova funcionalidade
- `fix:` Correção de bug
- `docs:` Documentação
- `style:` Formatação, sem mudança de código
- `refactor:` Refatoração de código
- `test:` Adição ou correção de testes
- `chore:` Tarefas de manutenção

#### Padrões de Código

```lua
-- Usar comentários descritivos
-- Indentação: 2 espaços
-- Nomes de variáveis: snake_case para Lua, camelCase para JS/TS
-- Funcões: nomes descritivos e específicos

-- Exemplo de estrutura de plugin
return {
  "author/plugin-name",
  dependencies = { "required-plugin" },
  event = "VeryLazy",  -- ou cmd, ft, keys conforme necessário
  config = function()
    require("plugin-name").setup({
      -- configurações com comentários explicativos
      option = "value", -- explicar o que esta opção faz
    })
    
    -- Keymaps com descrições
    vim.keymap.set("n", "<leader>x", ":Command<CR>", { desc = "Descrição clara" })
  end,
}
```

#### Testes

Antes de submeter PR, teste:

1. **Instalação limpa**
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   git clone sua-branch ~/.config/nvim
   nvim  # testar