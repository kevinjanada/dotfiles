return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        svelte = {
          on_attach = function(client)
            client.server_capabilities.documentFormattingProvider = false
          end,
        },
      },
    },
  },
}
