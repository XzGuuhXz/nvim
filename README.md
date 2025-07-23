# NVIM 🚀

Uma configuração moderna e completa do Neovim focada em produtividade e experiência visual.

![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white)

## ✨ Características

- **🎨 Interface Visual Moderna**: Tema TokyoNight com statusline personalizada
- **🔍 Navegação Avançada**: Telescope para busca de arquivos e conteúdo
- **🧠 LSP Integrado**: Suporte completo para múltiplas linguagens
- **⚡ Autocompletion**: Sistema de completar código inteligente
- **🌳 File Explorer**: NvimTree com ícones visuais
- **📝 Syntax Highlighting**: Treesitter para realce de sintaxe
- **🔧 Gerenciamento de Plugins**: Lazy.nvim para carregamento eficiente

## 📋 Pré-requisitos

- Neovim >= 0.9.0
- Git
- Node.js (para alguns LSPs)
- Ripgrep (para busca de texto)
- Um terminal com suporte a true color

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

## 🚀 Instalação

1. **Backup da configuração atual** (se existir):
```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

2. **Clone a configuração**:
```bash
git clone https://github.com/XzGuuhXz/Nvim-fusion.git ~/.config/nvim
```

3. **Inicie o Neovim**:
```bash
nvim
```

O Lazy.nvim será instalado automaticamente e todos os plugins serão baixados na primeira inicialização.

## 🗂️ Estrutura do Projeto

```
~/.config/nvim/
├── init.lua                    # Configuração principal
└── lua/
    └── plugins/
        ├── lsp/
        │   └── init.lua       # Configuração LSP e autocompletion
        ├── tools/
        │   └── init.lua       # Telescope e Treesitter
        ├── ui/
        │   └── init.lua       # Interface visual e tema
        └── util/
            └── init.lua       # Utilitários (which-key, autopairs, etc.)
```

## 🎯 Linguagens Suportadas

A configuração inclui suporte LSP para:

- **Lua** - Configurado especialmente para Neovim
- **Python** - Pyright
- **JavaScript/TypeScript** - ts_ls
- **HTML/CSS** - html, cssls
- **JSON** - jsonls
- **C/C++** - clangd

### Adicionando Novas Linguagens

1. Adicione o LSP ao Mason em `lua/plugins/lsp/init.lua`:
```lua
ensure_installed = { 
  "lua_ls", 
  "pyright", 
  -- adicione aqui
  "nova_linguagem_ls"
}
```

2. Configure o LSP:
```lua
require("lspconfig").nova_linguagem_ls.setup({
  capabilities = capabilities,
})
```

## ⌨️ Atalhos de Teclado

### Atalhos Gerais

| Atalho | Ação | Descrição |
|--------|------|-----------|
| `<Space>` | Leader | Tecla líder principal |
| `<leader>w` | `:w<CR>` | Salvar arquivo |
| `<leader>q` | `:q<CR>` | Sair |
| `<leader>pv` | `:Ex` | Abrir netrw |

### Navegação entre Janelas

| Atalho | Ação |
|--------|------|
| `<C-h>` | Janela à esquerda |
| `<C-j>` | Janela abaixo |
| `<C-k>` | Janela acima |
| `<C-l>` | Janela à direita |

### Edição Avançada

| Atalho | Ação | Modo |
|--------|------|------|
| `J` | Mover linha para baixo | Visual |
| `K` | Mover linha para cima | Visual |
| `<` | Diminuir indentação | Visual |
| `>` | Aumentar indentação | Visual |
| `n` | Próximo resultado (centralizado) | Normal |
| `N` | Resultado anterior (centralizado) | Normal |

### Telescope (Busca)

| Atalho | Ação |
|--------|------|
| `<leader>ff` | Buscar arquivos |
| `<leader>fg` | Busca textual (grep) |
| `<leader>fb` | Listar buffers |
| `<leader>fh` | Tags de ajuda |
| `<leader>pf` | Buscar arquivos (alternativo) |
| `<C-p>` | Arquivos Git |
| `<leader>ps` | Buscar texto |
| `<leader>pb` | Buffers (alternativo) |

### File Explorer (NvimTree)

| Atalho | Ação |
|--------|------|
| `<leader>e` | Alternar explorador |
| `<leader>o` | Focar explorador |
| `<leader>f` | Encontrar arquivo no explorador |

### Buffers

| Atalho | Ação |
|--------|------|
| `<Tab>` | Próximo buffer |
| `<S-Tab>` | Buffer anterior |
| `<leader>x` | Fechar buffer |

### LSP (Language Server Protocol)

| Atalho | Ação |
|--------|------|
| `gd` | Ir para definição |
| `gD` | Ir para declaração |
| `gi` | Ir para implementação |
| `gr` | Ir para referências |
| `K` | Documentação hover |
| `<C-k>` | Ajuda de assinatura |
| `<leader>rn` | Renomear símbolo |
| `<leader>ca` | Ações de código |
| `<leader>f` | Formatar código |

### Autocompletion (nvim-cmp)

| Atalho | Ação |
|--------|------|
| `<C-Space>` | Ativar completar |
| `<CR>` | Confirmar seleção |
| `<Tab>` | Próximo item/expandir snippet |
| `<S-Tab>` | Item anterior |
| `<C-b>` | Rolar documentação para cima |
| `<C-f>` | Rolar documentação para baixo |
| `<C-e>` | Abortar completar |

## 🎨 Personalização

### Alterando o Tema

O tema padrão é TokyoNight Night. Para alterar:

1. Edite `lua/plugins/ui/init.lua`
2. Modifique a configuração do TokyoNight:

```lua
require("tokyonight").setup({
  style = "storm", -- storm, night, moon, day
  -- outras configurações...
})
```

Estilos disponíveis:
- `night` - Escuro (padrão)
- `storm` - Azul escuro
- `moon` - Roxo escuro  
- `day` - Claro

### Configurações da Lualine

A statusline é totalmente personalizada com:
- Ícones de modo visual
- Informações de Git
- Diagnósticos LSP
- Informações de arquivo
- Codificação e formato

### Ícones e Símbolos

Todos os ícones são configuráveis em seus respectivos plugins. Os principais estão em:
- **Diagnósticos**: `init.lua`
- **File Explorer**: `lua/plugins/ui/init.lua` (nvim-tree)
- **Statusline**: `lua/plugins/ui/init.lua` (lualine)

## 🔧 Plugins Inclusos

### Core
- **lazy.nvim** - Gerenciador de plugins
- **plenary.nvim** - Biblioteca de utilitários Lua

### LSP & Completion
- **nvim-lspconfig** - Configurações LSP
- **mason.nvim** - Instalador de LSP servers
- **mason-lspconfig.nvim** - Ponte Mason-LSP
- **nvim-cmp** - Motor de autocompletion
- **LuaSnip** - Engine de snippets
- **friendly-snippets** - Coleção de snippets

### Interface
- **tokyonight.nvim** - Tema principal
- **lualine.nvim** - Statusline moderna
- **nvim-tree.lua** - File explorer
- **bufferline.nvim** - Abas de buffer
- **nvim-web-devicons** - Ícones de arquivo
- **indent-blankline.nvim** - Linhas de indentação

### Ferramentas
- **telescope.nvim** - Fuzzy finder
- **nvim-treesitter** - Syntax highlighting
- **Comment.nvim** - Toggle de comentários
- **nvim-autopairs** - Auto parênteses
- **which-key.nvim** - Guia de atalhos
- **nvim-colorizer.lua** - Visualização de cores

## 🛠️ Troubleshooting

### Problemas Comuns

**1. LSP não funciona**
```bash
:checkhealth lsp
:Mason  # Verificar se os servers estão instalados
```

**2. Ícones não aparecem**
- Instale uma Nerd Font (recomendado: JetBrainsMono Nerd Font)
- Configure seu terminal para usar a fonte

**3. Telescope muito lento**
```bash
# Instale ripgrep para busca mais rápida
sudo apt install ripgrep  # Ubuntu/Debian
brew install ripgrep      # macOS
```

**4. Treesitter com problemas**
```bash
:TSUpdate     # Atualizar parsers
:TSInstall <linguagem>  # Instalar parser específico
```

### Comandos Úteis

| Comando | Função |
|---------|---------|
| `:Lazy` | Gerenciar plugins |
| `:Mason` | Gerenciar LSP servers |
| `:checkhealth` | Diagnóstico do sistema |
| `:LspInfo` | Informações LSP |
| `:TSUpdate` | Atualizar Treesitter |

## 🤝 Contribuindo

1. Fork o projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📝 Licença

Este projeto está sob a licença MIT. Veja o arquivo `LICENSE` para detalhes.

## 🙏 Agradecimentos

- [Neovim](https://neovim.io/) - O editor incrível
- [Lazy.nvim](https://github.com/folke/lazy.nvim) - Gerenciador de plugins moderno
- [TokyoNight](https://github.com/folke/tokyonight.nvim) - Tema belíssimo
- Toda a comunidade Neovim que torna isso possível

---

⭐ Se esta configuração te ajudou, considere dar uma estrela no repositório!
