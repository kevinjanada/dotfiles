local sysname = vim.loop.os_uname().sysname
local workspaces_path = sysname == "Darwin" and "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Obsidian"
  or "~/Obsidian"

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
      workspaces = {
        {
          name = "obsidian",
          path = workspaces_path,
        },
      },
    },
  },
}
