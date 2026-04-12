return {
  "nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      html = {
        filetypes_include = { "templ", "html", "erb" },
      },
      -- htmx = {
      --   filetypes_include = { "templ", "html" },
      -- },
      tailwindcss = {
        filetypes_include = { "templ", "html", "erb" },
      },
      gdscript = {
        filetypes_include = { "gd", "gdscript", "gdscript3" },
        root_markers = { "project.godot", ".git" },
      },
    },
  },
}
