return {
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      worspaces = {
        {
          name = "obsidian",
          path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Obsidian",
        },
      },
    },
  },
}
