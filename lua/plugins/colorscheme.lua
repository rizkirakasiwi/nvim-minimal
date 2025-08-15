-- Colorscheme configuration
return {
  {
    "Zeioth/neon.nvim",
    config = function()
      require("neon").setup({
        dim_inactive = false,
        transparent = true,
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
        },
      })
      vim.cmd.colorscheme("neon-cyberpunk-night")
    end,
  },
}
