-- ~/.config/nvim/lua/custom/mappings.lua

local M = {}

M.general = {
  -- normal mode
  n = {
    ["<C-h>"] = {"<cmd> TmuxNavigateLeft<CR>", "window left"},
    ["<C-l>"] = {"<cmd> TmuxNavigateRight<CR>", "window right"},
    ["<C-j>"] = {"<cmd> TmuxNavigateDown<CR>", "window down"},
    ["<C-k>"] = {"<cmd> TmuxNavigateUp<CR>", "window up"},
    ["ss"] = {":w<CR>", "save file"},
    ["<leader>p"] = {":MarkdownPreviewToggle<CR>", "preview markdown"},
  },

  -- insert mode
  i = {
    ["jk"] = {"<Esc>", "escape insert mode"},
  }
}

-- local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

-- Set the mappings
for mode, mappings in pairs(M.general) do
  for key, map in pairs(mappings) do
    vim.api.nvim_set_keymap(mode, key, map[1], options)
  end
end

return M
