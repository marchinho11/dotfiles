require('lualine').setup {
    options = {
        icons_enabled = false,
        theme = 'gruvbox',
        disabled_filetypes = {'nerdtree'}
    },
    sections = {
        lualine_x = {'filetype'},
        lualine_y = {}
    }
}
