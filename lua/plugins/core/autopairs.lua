return {
  "windwp/nvim-autopairs",
  layz = false,
  event = "InsertEnter",
  config = function()
    require("nvim-autopairs").setup()
  end,
}