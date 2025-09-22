return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      --require "configs.lspconfig"
    end,
  },

  {
    'mrcjkb/rustaceanvim',
    version = '^6', -- Recommended
    lazy = false, -- This plugin is already lazy
  },

  {
    'rust-lang/rust.vim',
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },

  {
    'mfussenegger/nvim-dap',
    config = function()
			local dap, dapui = require("dap"), require("dapui")
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end
		end,
  },

  {
    'rcarriga/nvim-dap-ui',
    dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
    config = function()
			require("dapui").setup()
		end,
  },

  {
    'saecki/crates.nvim',
    ft = {"toml"},
    config = function()
      require("crates").setup {
        completion = {
          cmp = {
            enabled = true
          },
        },
      }
      require('cmp').setup.buffer({
        sources = { { name = "crates" }}
      })
    end
  },
  {
    'dgagn/diagflow.nvim',
    -- event = 'LspAttach', -- This is what I use personnally and it works great
    opts = {}
  },
  { "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },

  -- {
  --   "simrat39/rust-tools.nvim",
  --   dependencies = { "neovim/nvim-lspconfig" },
  --   ft = { "rust" },
  --   config = function()
  --       require("rust-tools").setup({
  --           tools = {
  --               inlay_hints = {
  --                   auto = false,  -- Disable automatic inlay hints
  --                   show_parameter_hints = false,
  --                   show_variable_name_hints = false,
  --                   only_current_line = false,
  --               },
  --           },
  --           server = {
  --               on_attach = function(_, bufnr)
  --                   vim.keymap.set("n", "<leader>n", vim.lsp.buf.rename,
  --                       { buffer = bufnr, desc = "Rename variable" })
  --               end,
  --           },
  --       })
  --   end
  -- },
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
