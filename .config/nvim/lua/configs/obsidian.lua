return {
  dir = "~/NoteHako/",
  completion = {
    nvim_cmp = true,
    min_chars = 2,
  },

  notes_subdir = "inbox",
  new_notes_location = "current_dir",
  daily_notes = {
    folder = "dailies",
  },

  -- disable_frontmatter = true,

  templates = {
    subdir = "templates",
    date_format = "%Y-%m-%d",
    time_format = "%H:%M:%S",
    tags = "",
    substitutions = {
      yesterday = function()
        return os.date("%Y-%m-%d", os.time() - 86400)
      end,
      tomorrow = function()
        return os.date("%Y-%m-%d", os.time() + 86400)
      end,
    },
  },

  note_id_func = function(title)
    return title
  end,

  ui = {
    enable = true,
  },
}
