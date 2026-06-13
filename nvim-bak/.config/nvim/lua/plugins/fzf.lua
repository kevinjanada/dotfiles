return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
    local actions = require("fzf-lua").actions

    -- Set the new keybindings
    opts.files.actions["ctrl-i"] = { actions.toggle_ignore }
    opts.files.actions["ctrl-h"] = { actions.toggle_hidden }

    opts.grep.actions["ctrl-i"] = { actions.toggle_ignore }
    opts.grep.actions["ctrl-h"] = { actions.toggle_hidden }

    -- TODO: how to change the UI to say <C-i> and <C-h> instead of <alt-i> and <alt-h>

    return opts
  end,
}
