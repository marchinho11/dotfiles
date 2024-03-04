require('lualine').setup {
    options = {
        icons_enabled = false,
        disabled_filetypes = {'nerdtree'}
    },
    sections = {
        lualine_x = {'filetype'},
        lualine_y = {}
    }
}
