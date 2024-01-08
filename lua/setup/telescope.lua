-- [[ Utility functions for git ]]

-- Function to find the git root directory based on the current buffer's path
local function find_git_root()
  -- Use the current buffer's path as the starting point for the git search
  local current_file = vim.api.nvim_buf_get_name(0)
  local current_dir
  local cwd = vim.fn.getcwd()
  -- If the buffer is not associated with a file, return nil
  if current_file == '' then
    current_dir = cwd
  else
    -- Extract the directory from the current file's path
    current_dir = vim.fn.fnamemodify(current_file, ':h')
  end

  -- Find the Git root directory from the current file's path
  local git_root = vim.fn.systemlist('git -C ' .. vim.fn.escape(current_dir, ' ') .. ' rev-parse --show-toplevel')[1]
  if vim.v.shell_error ~= 0 then
    print 'Not a git repository. Searching on current working directory'
    return cwd
  end
  return git_root
end

-- Custom live_grep function to search in git root
local function live_grep_git_root()
  local git_root = find_git_root()
  if git_root then
    require('telescope.builtin').live_grep {
      search_dirs = { git_root },
    }
  end
end

vim.api.nvim_create_user_command('LiveGrepGitRoot', live_grep_git_root, {})

local function telescope_live_grep_open_files()
  require('telescope.builtin').live_grep {
    grep_open_files = true,
    prompt_title = 'Live Grep in Open Files',
  }
end

-- [[ Configure Telescope ]]

-- See `:help telescope` and `:help telescope.setup()`
require('telescope').setup {
  -- no idea what this does
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')


-- [[ Some telescope keymaps ]]
-- See `:help telescope.builtin`

-- Finding files
vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, { desc = '[F]ind [B]uffers' })
vim.keymap.set('n', '<leader>fr', require('telescope.builtin').oldfiles, { desc = '[F]ind [R]ecent files' })
vim.keymap.set('n', '<leader>fd', require('telescope.builtin').find_files, { desc = '[F]ind Files in [D]irectory' })
vim.keymap.set('n', '<leader>fg', require('telescope.builtin').git_files, { desc = '[F]ind [G]it Files' })

-- Grep
vim.keymap.set('n', '<leader>gb', require('telescope.builtin').current_buffer_fuzzy_find, { desc = '[G]rep [B]uffer' })
vim.keymap.set('n', '<leader>go', telescope_live_grep_open_files, { desc = '[G]rep [O]pen [F]iles' })
vim.keymap.set('n', '<leader>gd', require('telescope.builtin').live_grep, { desc = '[G]rep in [D]irectory' })
vim.keymap.set('n', '<leader>gg', ':LiveGrepGitRoot<cr>', { desc = '[G]rep [G]it files' })
vim.keymap.set('n', '<leader>gw', require('telescope.builtin').grep_string, { desc = '[G]rep current [W]ord' })

-- TODO Check what these builtins do

-- Why?
vim.keymap.set('n', '<leader>ss', require('telescope.builtin').builtin, { desc = '[S]earch [S]elect Telescope' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
