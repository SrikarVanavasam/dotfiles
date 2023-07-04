-- ***********
-- Plugins
-- ***********
lvim.plugins = {
  {
    "nvim-pack/nvim-spectre",
    event = "BufRead",
    config = function()
      require("spectre").setup({
        mapping={
          ['send_to_qf'] = {
            map = "<leader>Q",
            cmd = "<cmd>lua require('spectre.actions').send_to_qf()<CR>",
            desc = "send all item to quickfix"

          },

        }
      })
    end,
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          -- default options: exact mode, multi window, all directions, with a backdrop
          require("flash").jump()
        end,
        desc = "Flash",
      },
      {
        "S",
        mode = { "n", "o", "x" },
        function()
          require("flash").treesitter()
        end,
        desc = "Flash Treesitter",

      },
      {
        "r",
        mode = "o",

        function()
          require("flash").remote()
        end,
        desc = "Remote Flash",
      },
    },
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "jcdickinson/codeium.nvim",
    commit = "b1ff0d6c993e3d87a4362d2ccd6c660f7444599f", -- TODO check if removing works
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({
      })
    end
  },
}


-- ***********
-- Keybindings
-- ***********
vim.g.maplocalleader = ","
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<C-p>", '"0p')
vim.keymap.set("n", "<C-P>", '"0P')
vim.cmd("map 0 ^")
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]]) -- Exit from insert mode by Esc in Terminal
-- Text object mappings
vim.keymap.set("o", "ar", "a]") -- [r]ectangular bracket
vim.keymap.set("o", "ac", "a}") -- [c]urly brace
vim.keymap.set("o", "am", "aW") -- [m]assive word (= no shift needed)
vim.keymap.set("o", "aq", 'a"') -- [q]uote
vim.keymap.set("o", "az", "a'") -- [z]ingle quote
vim.keymap.set("o", "aa", "a>") -- [a]ngle bracket
vim.keymap.set("o", "ir", "i]")
vim.keymap.set("o", "ic", "i}")
vim.keymap.set("o", "im", "iW")
vim.keymap.set("o", "iq", 'i"')
vim.keymap.set("o", "iz", "i'")
vim.keymap.set("o", "ia", "i>")

lvim.builtin.which_key.mappings["S"] = { '<cmd>lua require("spectre").open()<CR>', "Open Spectre" }
lvim.builtin.which_key.mappings["sw"] = { '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', "Search current word" }
-- Options for cmp
lvim.builtin.cmp.completion = {completeopt = 'menu,menuone,noinsert'} -- Highlight first option for completion
vim.list_extend(lvim.builtin.cmp.sources, { -- Add sources for nvim-cmp
  { name = "codeium" }, -- Need to add source name to completion box
})

-- ***********
-- Options
-- ***********

lvim.colorscheme = "catppuccin-mocha"
vim.opt.relativenumber = true -- set relative numbered lines
lvim.lazy.opts.git.timeout = 1000
vim.opt.mouse = "a"

-- Set up clipboard for wsl
vim.g.clipboard = {
  name = 'WslClipboard',
  copy = {
     ["+"] = 'clip.exe',
     ["*"] = 'clip.exe',
   },
  paste = {
     ["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
     ["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
  },
  cache_enabled = 0,
}
