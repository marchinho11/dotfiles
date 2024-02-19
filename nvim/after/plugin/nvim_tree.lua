require("nvim-tree").setup({
  view = {
    number = true,
    relativenumber = true,
  },
  renderer = {
    icons = {
      show = {
        file = false,
        folder = false,
        folder_arrow = false,
        git = false,
        modified = false,
        diagnostics = false,
        bookmarks = false,
      },
    }
  }
})
