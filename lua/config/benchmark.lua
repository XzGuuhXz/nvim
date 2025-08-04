-- lua/config/benchmark.lua
-- Sistema de benchmark para medir performance da configuração

local M = {}

-- Variável global para armazenar tempo de início
_G.nvim_start_time = vim.loop.hrtime()

-- Função para medir tempo de startup
function M.measure_startup()
  vim.api.nvim_create_autocmd("VimEnter", {
    group = vim.api.nvim_create_augroup("BenchmarkStartup", { clear = true }),
    callback = function()
      local end_time = vim.loop.hrtime()
      local duration = (end_time - _G.nvim_start_time) / 1000000 -- converter para ms
      
      -- Só mostra se for solicitado
      if vim.g.show_startup_time then
        print(string.format("🚀 Neovim iniciado em %.2fms", duration))
      end
      
      -- Armazena para uso posterior
      vim.g.last_startup_time = duration
    end,
  })
end

-- Função para contar plugins
function M.count_plugins()
  local ok, lazy = pcall(require, "lazy")
  if not ok then
    return { loaded = 0, total = 0, error = "Lazy não encontrado" }
  end
  
  local loaded = 0
  local total = 0
  
  -- Usar pairs em vez de ipairs para iterar sobre a tabela de plugins
  for name, plugin in pairs(lazy.plugins()) do
    total = total + 1
    -- Verificar se plugin existe e tem o campo _.loaded
    if plugin and plugin._ and plugin._.loaded then
      loaded = loaded + 1
    end
  end
  
  return { loaded = loaded, total = total }
end

-- Função para medir uso de memória
function M.measure_memory()
  -- Coleta garbage antes de medir
  collectgarbage("collect")
  
  local lua_memory = collectgarbage("count") -- KB
  
  return {
    lua_memory_kb = math.floor(lua_memory),
    lua_memory_mb = math.floor(lua_memory / 1024 * 100) / 100
  }
end

-- Comando para mostrar TODAS as informações de uma vez
function M.show_all()
  local plugins = M.count_plugins()
  local memory = M.measure_memory()
  
  -- Header bonito
  local separator = "═══════════════════════════════════════════════════════════"
  print("\n" .. separator)
  print("🚀   RELATÓRIO COMPLETO DA CONFIGURAÇÃO NEOVIM   🚀")
  print(separator)
  
  -- Performance
  print("\n📊 PERFORMANCE:")
  print(string.format("   🚀 Tempo de startup: %.2fms", vim.g.last_startup_time or 0))
  print(string.format("   🧠 Memória Lua: %.2f MB (%.0f KB)", memory.lua_memory_mb, memory.lua_memory_kb))
  
  -- Plugins
  print("\n🔌 PLUGINS:")
  if plugins.error then
    print("   ❌ Erro: " .. plugins.error)
  else
    print(string.format("   📦 Total: %d plugins instalados", plugins.total))
    print(string.format("   ✅ Carregados: %d (%.1f%%)", plugins.loaded, plugins.total > 0 and (plugins.loaded / plugins.total * 100) or 0))
    print(string.format("   💤 Lazy: %d (%.1f%%)", plugins.total - plugins.loaded, plugins.total > 0 and ((plugins.total - plugins.loaded) / plugins.total * 100) or 0))
  end
  
  -- Sistema
  print("\n🖥️  SISTEMA:")
  local uname = vim.loop.os_uname()
  print("   💻 OS: " .. uname.sysname .. " " .. (uname.release or ""))
  print("   🏗️  Arquitetura: " .. (uname.machine or "desconhecida"))
  print("   🔧 Neovim: v" .. vim.version().major .. "." .. vim.version().minor .. "." .. vim.version().patch)
  print("   🌙 Lua: " .. _VERSION)
  
  -- Configuração
  print("\n⚙️  CONFIGURAÇÃO:")
  print("   📂 Config path: " .. vim.fn.stdpath("config"))
  print("   📦 Data path: " .. vim.fn.stdpath("data"))
  print("   🎨 Colorscheme: " .. (vim.g.colors_name or "default"))
  print("   👤 Leader key: " .. (vim.g.mapleader or "\\"))
  
  -- LSP Info (se disponível)
  print("\n🛠️  LSP:")
  local clients = vim.lsp.get_clients()
  if #clients > 0 then
    print(string.format("   📡 Servidores ativos: %d", #clients))
    for _, client in ipairs(clients) do
      local buffers = vim.tbl_keys(client.attached_buffers or {})
      print(string.format("     └─ %s (%d buffers)", client.name, #buffers))
    end
  else
    print("   📡 Nenhum servidor LSP ativo")
  end
  
  -- Buffers e Windows
  print("\n📄 SESSÃO ATUAL:")
  local buffers = vim.api.nvim_list_bufs()
  local loaded_buffers = vim.tbl_filter(function(buf)
    return vim.api.nvim_buf_is_loaded(buf)
  end, buffers)
  print(string.format("   📄 Buffers: %d carregados / %d total", #loaded_buffers, #buffers))
  print(string.format("   🪟 Windows: %d", vim.api.nvim_tabpage_list_wins(0) and #vim.api.nvim_tabpage_list_wins(0) or 0))
  print(string.format("   📑 Tab pages: %d", #vim.api.nvim_list_tabpages()))
  
  -- Lazy.nvim detalhes (se disponível)
  local ok, lazy = pcall(require, "lazy")
  if ok then
    print("\n🔄 LAZY.NVIM DETALHES:")
    
    -- Contar por categoria
    local categories = {
      loaded = 0,
      not_loaded = 0,
      has_errors = 0,
    }
    
    local plugin_details = {}
    for name, plugin in pairs(lazy.plugins()) do
      if plugin and plugin._ then
        if plugin._.loaded then
          categories.loaded = categories.loaded + 1
          table.insert(plugin_details, { name = name, status = "✅ loaded", time = plugin._.loaded.time or 0 })
        else
          categories.not_loaded = categories.not_loaded + 1
          table.insert(plugin_details, { name = name, status = "💤 lazy", time = 0 })
        end
        
        if plugin._.errors and #plugin._.errors > 0 then
          categories.has_errors = categories.has_errors + 1
        end
      end
    end
    
    print(string.format("   ✅ Carregados: %d", categories.loaded))
    print(string.format("   💤 Lazy: %d", categories.not_loaded))
    if categories.has_errors > 0 then
      print(string.format("   ❌ Com erros: %d", categories.has_errors))
    end
    
    -- Mostrar top 5 plugins mais lentos (se houver)
    table.sort(plugin_details, function(a, b) return a.time > b.time end)
    if #plugin_details > 0 and plugin_details[1].time > 0 then
      print("\n   ⏱️  Top 5 plugins (tempo de carregamento):")
      for i = 1, math.min(5, #plugin_details) do
        local p = plugin_details[i]
        if p.time > 0 then
          print(string.format("     %d. %s: %.2fms", i, p.name, p.time))
        end
      end
    end
  end
  
  -- Keymaps count
  print("\n⌨️  KEYMAPS:")
  local keymaps = vim.api.nvim_get_keymap("")
  local insert_keymaps = vim.api.nvim_get_keymap("i")
  local visual_keymaps = vim.api.nvim_get_keymap("v")
  print(string.format("   🔤 Normal mode: %d", #keymaps))
  print(string.format("   ✏️  Insert mode: %d", #insert_keymaps))
  print(string.format("   👁️  Visual mode: %d", #visual_keymaps))
  
  -- Features ativas
  print("\n🎯 FEATURES ATIVAS:")
  print("   " .. (vim.g.loaded_netrw and "❌" or "✅") .. " netrw disabled")
  print("   " .. (vim.opt.number:get() and "✅" or "❌") .. " line numbers")
  print("   " .. (vim.opt.relativenumber:get() and "✅" or "❌") .. " relative numbers")
  print("   " .. (vim.opt.signcolumn:get() ~= "no" and "✅" or "❌") .. " sign column")
  print("   " .. (vim.opt.termguicolors:get() and "✅" or "❌") .. " true colors")
  print("   " .. (vim.opt.clipboard:get()[1] and "✅" or "❌") .. " system clipboard")
  
  -- Footer
  print("\n" .. separator)
  print("📝 Para mais detalhes: :checkhealth | :Lazy profile | :LspInfo")
  print(separator .. "\n")
end

-- Comando para mostrar estatísticas completas (versão simplificada)
function M.show_stats()
  local plugins = M.count_plugins()
  local memory = M.measure_memory()
  
  print("📊 === ESTATÍSTICAS DA CONFIGURAÇÃO ===")
  print(string.format("🚀 Último startup: %.2fms", vim.g.last_startup_time or 0))
  
  if plugins.error then
    print("🔌 Plugins: " .. plugins.error)
  else
    print(string.format("🔌 Plugins: %d carregados / %d total (%.1f%%)", 
      plugins.loaded, plugins.total, 
      plugins.total > 0 and (plugins.loaded / plugins.total * 100) or 0))
  end
  
  print(string.format("🧠 Memória Lua: %.2f MB", memory.lua_memory_mb))
  print("=====================================")
end
function M.simple_benchmark()
  print("🔍 Benchmark simples...")
  M.show_stats()
  
  print("\n🖥️  Sistema:")
  print("  Neovim: " .. vim.version().major .. "." .. vim.version().minor .. "." .. vim.version().patch)
  print("  Lua: " .. _VERSION)
  print("  OS: " .. vim.loop.os_uname().sysname)
end



-- Configurar comandos de usuário
function M.setup_commands()
  vim.api.nvim_create_user_command("BenchmarkAll", M.show_all, {
    desc = "🚀 Mostrar TODAS as informações da configuração"
  })
  
  vim.api.nvim_create_user_command("BenchmarkStats", M.show_stats, {
    desc = "Mostrar estatísticas de performance"
  })
  
  vim.api.nvim_create_user_command("BenchmarkSimple", M.simple_benchmark, {
    desc = "Benchmark simples e seguro"
  })
  
  vim.api.nvim_create_user_command("BenchmarkStartup", function()
    if vim.g.last_startup_time then
      print(string.format("🚀 Último tempo de startup: %.2fms", vim.g.last_startup_time))
    else
      print("❌ Tempo de startup não disponível (reinicie o Neovim)")
    end
  end, {
    desc = "Mostrar tempo do último startup"
  })
  
  -- Comando para ativar/desativar mostrar startup time
  vim.api.nvim_create_user_command("BenchmarkToggleStartup", function()
    vim.g.show_startup_time = not vim.g.show_startup_time
    local status = vim.g.show_startup_time and "ativado" or "desativado" 
    print("🔧 Mostrar tempo de startup: " .. status)
  end, {
    desc = "Ativar/desativar exibição do tempo de startup"
  })
end

-- Inicializar sistema de benchmark
function M.setup()
  M.measure_startup()
  M.setup_commands()
end

return M