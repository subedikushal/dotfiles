return {
  {
    "Pocco81/auto-save.nvim",
    enabled = false,
    config = function()
      require("auto-save").setup({
        -- your config goes here
        -- or just leave it empty :)
      })
    end,
  },

  {
    "CRAG666/code_runner.nvim",
    config = function()
      require("code_runner").setup({
        mode = "term",
        focus = true,
        startinsert = true,
        float = {
          border = "single",
        },
        filetype = {
          java = {
            "cd $dir &&",
            "javac $fileName &&",
            "java $fileNameWithoutExt",
          },
          python = "python3 -u",
          typescript = "deno run",
          rust = {
            "cd $dir &&",
            "rustc $fileName &&",
            "$dir/$fileNameWithoutExt",
          },
        },
      })
    end,
  },

  { "CRAG666/betterTerm.nvim" },
}
