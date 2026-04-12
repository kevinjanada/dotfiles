return {
  "nvim-treesitter/nvim-treesitter",
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs', -- Sets main module to use for opts
  opts = {
    ensure_installed = {
      "templ",
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
    -- Workaround: nvim 0.12.1 conceal_line provider crashes when processing
    -- markdown injection queries (set-lang-from-info-string! gets stale node).
    -- Disable injections to prevent the crash. Remove once upstream is fixed.
    vim.treesitter.query.set("markdown", "injections", "")
  end,
}
