return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {
          filetypes_include = { "templ", "html", "erb" },
        },
      },
    },
  },
}
