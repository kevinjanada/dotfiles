return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  main = "nvim-treesitter.config",
  opts = {
    ensure_installed = {
      "templ",
      "blade",
      "svelte",
    },
    highlight = { enable = true },
  },
  config = function(_, opts)
    require("nvim-treesitter.parsers")["blade"] = {
      install_info = {
        url = "https://github.com/EmranMR/tree-sitter-blade",
        files = { "src/parser.c", "src/scanner.c" },
        branch = "main",
      },
      filetype = "blade",
    }

    require("nvim-treesitter.config").setup(opts)

    -- Workaround: nvim 0.12.1 conceal_line provider crashes when processing
    -- markdown injection queries (set-lang-from-info-string! gets stale node).
    -- Disable injections to prevent the crash. Remove once upstream is fixed.
    vim.treesitter.query.set("markdown", "injections", "")
  end,
}
