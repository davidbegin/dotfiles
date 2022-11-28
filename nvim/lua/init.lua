local nvim_lsp = require'lspconfig'

local mapper = function(mode, key, result)
  vim.api.nvim_buf_set_keymap(0, mode, key, result, {noremap = true, silent = false})
end

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

require('dap-go').setup()
require("dapui").setup()
require("nvim-dap-virtual-text").setup()

-- Completion Setup
local cmp = require('cmp')

cmp.setup {
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    end,
  },

  mapping = {

    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif vim.fn["vsnip#available"](1) == 1 then
        feedkey("<Plug>(vsnip-expand-or-jump)", "")
      elseif has_words_before() then
        cmp.complete()
      else
        fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item()
      elseif vim.fn["vsnip#jumpable"](-1) == 1 then
        feedkey("<Plug>(vsnip-jump-prev)", "")
      end
    end, { "i", "s" }),

    -- Don't know what's up with this
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),

    -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),

    ["<C-n>"] = cmp.mapping.select_next_item(),
    ["<C-p>"] = cmp.mapping.select_prev_item(),
  },



  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
  }, {

    { name = 'buffer' },
  })

}

local on_attach_vim_plus_keymaps = function(client)
  -- Little confused on this on_attach_vim business
  -- on_attach_vim(client)

  -- This is the only thing that worked
  mapper('n', 'gd',         '<cmd> lua vim.lsp.buf.definition()<CR>')

  -- mapper('n', '1gD',        '<cmd> lua vim.lsp.buf.type_definition()<CR>')
  -- mapper('n', 'g0',         '<cmd> lua vim.lsp.buf.document_symbol()<CR>')
  -- mapper('n', 'gD',         '<cmd> lua vim.lsp.buf.implementation()<CR>')
  -- mapper('n', 'gW',         '<cmd> lua vim.lsp.buf.workspace_symbol()<CR>')
  -- mapper('n', '<c-]>',      '<cmd> lua vim.lsp.buf.definition()<CR>')
  -- mapper('n', '<leader>sd', '<cmd> lua vim.lsp.buf.show_line_diagnostics()<CR>')

  -- This don't work either
  -- mapper('n', 'H',          '<cmd> lua vim.lsp.buf.hover()<CR>')
  -- This works in vimscript though
  -- nnoremap H           <cmd>lua vim.lsp.buf.hover()<CR>

  -- Doesn't do anything
  -- mapper('n', 'rn', '<cmd> lua vim.lsp.buf.rename()<CR>')

  -- Doesn't do what I expect
  -- mapper('n', 'gr',         '<cmd> lua vim.lsp.buf.references()<CR>')

  -- Doesn't do anything
  -- mapper('n', '<c-k>',      '<cmd> lua vim.lsp.buf.signature_help()<CR>')
end

-- graveyard of dead python language servers
-- nvim_lsp.pyls.setup{on_attach=on_attach_vim_plus_keymaps}
-- nvim_lsp.pyls_ms.setup{on_attach=on_attach_vim_plus_keymaps}
-- nvim_lsp.ale.setup{on_attach=on_attach_vim_plus_keymaps}

nvim_lsp.jedi_language_server.setup{
  -- cmd = {"python", "-m", "jedi-language-server"},
  on_attach=on_attach_vim_plus_keymaps
}

nvim_lsp.rust_analyzer.setup{}

local sumneko_root_path = '/home/begin/code/lua-language-server'
local sumneko_binary = sumneko_root_path .. "/bin/Linux/lua-language-server"

require'lspconfig'.sumneko_lua.setup {
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  on_attach = on_attach_vim_plus_keymaps,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        -- Get the language server to recognize the `factorio` globals
        globals = {
          'vim', 'script', 'defines', 'game', 'global', 'serpent',
          'rendering', "story_init", "story_update", "story_init_helpers", "story_elapsed_check", "set_info",
          'story_jump_to',
        },

      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
          -- [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,

          -- This does not seem to be working
          ['~/.local/share/Steam/steamapps/common/Factorio/data/base/data.lua'] = true,
          ['~/.local/share/Steam/steamapps/common/Factorio/data/core/data.lua'] = true,
          ['~/.local/share/Steam/steamapps/common/Factorio/data/server/core/data.lua'] = true,
          ['~/.local/share/Steam/steamapps/common/Factorio/data/server/base/data.lua'] = true,
        },
      },
    },
  },
}

-- Do I still need this
nvim_lsp.gopls.setup{
  on_attach=on_attach_vim,
  root_dir=nvim_lsp.util.root_pattern('.git');
}

nvim_lsp.terraformls.setup{
  on_attach=on_attach_vim_plus_keymaps,
  -- cmd = {"terraform-ls", "serve"},
  -- root_dir = nvim_lsp.util.root_pattern(".terraform", ".git");
}

require'colorizer'.setup()

-- require'nvim-treesitter.configs'.setup{}

-- We need to tell lua to always reload begin.tele
-- since it updated with such lightning speed
-- package.loaded['begin.tele'] = nil

-- Why do I need this?
-- require('plugin.completion')

require('plugin.full_line_teej')
require('plugin.quickfixlist')

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {

    -- Enable underline, use default values
    underline = false,

    -- Disable a feature
    update_in_insert = false,

    -- Enable virtual text, override spacing to 4
    virtual_text = {
      spacing = 4,
      prefix = '  ',
    },

    -- Use a function to dynamically turn signs off
    -- and on, using buffer local variables
    signs = function(bufnr, client_id)
      local ok, result = pcall(vim.api.nvim_buf_get_var, bufnr, 'show_signs')
      -- No buffer local variable set, so just enable by default
      if not ok then
        return true
      end

      return result
    end,
  }
)

require('telescope').setup{
  defaults = {
    layout_config={prompt_position="top"},
    sorting_strategy = "ascending",
  },
}

require"fidget".setup{}
