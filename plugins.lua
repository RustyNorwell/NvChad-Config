local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "wfxr/minimap.vim",
    lazy = false,
    -- config = function()
    --   Configuration settings for minimap.vim
    --   vim.g.minimap_width = 10
    --   vim.g.minimap_auto_start = 1
    --   vim.g.minimap_auto_start_win_enter = 1
    -- end
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
}

return plugins
