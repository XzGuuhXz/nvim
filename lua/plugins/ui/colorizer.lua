return {
  "NvChad/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup {
      filetypes = { "*" },
      user_default_options = {
        RGB = true,
        RRGGBB = true,
        names = true,
        mode = "background",
        AARRGGBB = true,
        virtualtext = "■",
      },
      buftypes = {},
    }
  end
}
