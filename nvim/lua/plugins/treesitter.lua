return {
   "nvim-treesitter/nvim-treesitter",
   build = ":TSUpdate",
   config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
         ensure_installed = { "c", "lua", "vim", "javascript", "html", "c_sharp", "typescript", "yaml", "markdown", "css", "html", "http" }, 
         --sync_install = false,
         highlight = { enable = true },
         indent = { enable = true },  
      })
   end
}
