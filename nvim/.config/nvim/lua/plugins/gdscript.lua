return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gdscript = {
          filetypes_include = { "gd", "gdscript", "gdscript3" },
          root_markers = { "project.godot", ".git" },
        },
      },
    },
  },
}
