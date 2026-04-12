return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "templ",
      "htmx-lsp",
      "html-lsp",
    },
  },
  config = function()
    require("mason").setup({
      registries = {
        "github:Crashdummyy/mason-registry",
        "github:mason-org/mason-registry",
      },
    })
  end,
}
