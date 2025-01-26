[{1 :folke/which-key.nvim
  :config (fn []
            (let [which-key (require :which-key)]
              (which-key.setup
               {:keys ["<leader>" "<c-w>" "\"" "'" "`" "c" "v" "g"]
                :cmd "WhichKey"
                })))
  :init (fn []
          (vim.api.nvim_set_keymap "n" "<leader>wK" "<cmd>WhichKey <CR>" {:desc "whichkey all keymaps"})
          (vim.api.nvim_set_keymap "n" "<leader>wk" "(fn [] (vim.cmd (.. \"WhichKey \" (vim.fn.input \"WhichKey: \"))))" {:desc "whichkey query lookup"}))
          }]
