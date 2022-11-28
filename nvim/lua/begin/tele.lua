local M = {}

local actions = require('telescope.actions')


function M.grep_last_search()
  -- \<getreg\>\C -- -> Subs out the search things

  local register = vim.fn.getreg('/'):gsub('\\<', ''):gsub('\\>', ''):gsub("\\C", "")
  require('telescope.builtin').grep_string {
    path_display = true,
    word_match = '-w', search = register,
  }
end

-- Hello

function M.edit_neovim() -- SCREW YOU FUTURE BEGIN
  require('telescope.builtin').file_browser {
    prompt_title = "~ cwd ~",
    path_display = false,
    -- cwd = "~/.config/nvim",

    layout_strategy = 'horizontal',
    layout_config = {
      preview_width = 0.65,
    },
  }
end

function M.setup()
  require('telescope').setup{
    defaults = {
      sorting_strategy = "ascending",
      show_pluto = true,
      path_display = true,
      layout_strategy = 'horizontal',
      winblend = 0,
      borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰'},
      mappings = {
        i = {
          -- ["<ESC>"] = actions.close,
          ["<esc>"] = function(...) actions.close(...) vim.fn.system("beginbot '!horns'") end,

          ["<C-q>"] = actions.send_to_qflist,
          ["<C-c>"] = actions.center,
          -- ["<C-c>"] = actions.goto_file_selection_vsplit + actions.center
        }
      },

      layout = {
        prompt_position = "top",
        preview_cutoff = 79,
      },

      -- layout_strategy = 'flex',
      -- :echo columns
      -- -1 for preview_cutoff
      -- preview_cutoff = 79,
      -- winblend = 100,
      -- sorting_strategy = "descending",
      -- prompt_position = "bottom",

    }
  }

  -- Teej told me to do so
  require('telescope').load_extension('fzy_native')
end

function M.current_file_cwd()
  return vim.fn.expand("%:h")
end

function M.spellcheck()
  print("hello")
  -- Not sure how to accomplish what I want
  hello = vim.fn.execute("z=")
  -- print(hello)
end

function M.cfwd ()
  require('telescope.builtin').git_files {
    path_display = false,
    cwd = M.current_file_cwd(),
    prompt = "~ CFWD ~"
  }
end

return M
