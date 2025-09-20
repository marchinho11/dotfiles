return {
  filters = { dotfiles = false },
  disable_netrw = true,
  hijack_cursor = true,
  sync_root_with_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = false,
  },
  view = {
    side = "left",
    width = 40,
    preserve_window_proportions = true,
  },
  renderer = {
    highlight_git = true,
    indent_markers = { enable = true },
    icons = {
      show = {
        file = false,
        folder = false,
        folder_arrow = true,
        git = false,
        modified = false,
        diagnostics = false,
        bookmarks = false,
      },
    },
  },
}
