return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tailwindcss = {
          filetypes_include = { "templ", "html", "erb" },
        },
      },
    },
  },
}
