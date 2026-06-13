-- INFO: the plugin need to be loaded first
-- :Lazy load markdown-preview.nvim
-- then call the build command
-- :Lazy build markdown-preview.nvim
return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = function()
    vim.fn["mkdp#util#install"]()
  end,
}
