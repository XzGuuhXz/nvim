-- =========================
-- 🧭 Mapeamento de líderes
-- =========================
vim.g.mapleader = " "          -- Líder global: espaço
vim.g.maplocalleader = " "     -- Líder local: espaço

-- =========================
-- 📜 Aparência e Interface
-- =========================
vim.opt.number = true          -- Mostrar número das linhas
vim.opt.relativenumber = false -- Não mostrar número relativo
vim.opt.signcolumn = "yes"     -- Sempre mostrar a coluna de sinais (git, diagnostics)
vim.opt.colorcolumn = "0"      -- Desativa coluna guia de limite de caracteres
vim.opt.showmode = false       -- Não mostrar o modo (-- INSERT --) na linha de status
vim.opt.termguicolors = true   -- Habilita cores verdadeiras (TrueColor)

-- =========================
-- ✍️ Tabulação e Indentação
-- =========================
vim.opt.tabstop = 2            -- Tamanho de uma tabulação em espaços
vim.opt.shiftwidth = 2         -- Tamanho do recuo (>> e <<)
vim.opt.expandtab = true       -- Converte TAB em espaços
vim.opt.smartindent = true     -- Indenta automaticamente novas linhas

-- =========================
-- 📜 Quebra e rolagem
-- =========================
vim.opt.wrap = false           -- Não quebra linhas automaticamente
vim.opt.scrolloff = 8          -- Mantém 8 linhas visíveis acima/abaixo do cursor ao rolar

-- =========================
-- 🔍 Busca
-- =========================
vim.opt.hlsearch = false       -- Não destacar todas as ocorrências da busca
vim.opt.incsearch = true       -- Mostrar resultados enquanto digita

-- =========================
-- 📋 Clipboard
-- =========================
vim.opt.clipboard = "unnamedplus" -- Usa o clipboard do sistema (X11 ou Windows)

-- =========================
-- 💾 Arquivos e Backup
-- =========================
vim.opt.swapfile = false       -- Desabilita arquivos de swap
vim.opt.backup = false         -- Desabilita arquivos de backup

-- =========================
-- ⚡ Performance
-- =========================
vim.opt.updatetime = 50        -- Tempo de espera (ms) para eventos como CursorHold

