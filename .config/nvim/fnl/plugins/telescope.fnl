[{1 :nvim-telescope/telescope.nvim
  :dependencies [:nvim-telescope/telescope-ui-select.nvim
                 :nvim-lua/popup.nvim
                 :nvim-lua/plenary.nvim]
  :init (fn []
          (vim.keymap.set :n :<leader>ff ":lua require('telescope.builtin').find_files()<CR>" {:noremap true})
          (vim.keymap.set :n :<leader>fg ":lua require('telescope.builtin').live_grep()<CR>" {:noremap true})
          (vim.keymap.set :n :<leader>fb ":lua require('telescope.builtin').buffers()<CR>" {:noremap true})
          (vim.keymap.set :n :<leader>fh ":lua require('telescope.builtin').help_tags()<CR>" {:noremap true})
          (vim.keymap.set :n :<leader>ma ":lua require('telescope.builtin').marks()<CR>" {:noremap true})
          (vim.keymap.set :n :<leader>fo ":lua require('telescope.builtin').oldfiles()<CR>" {:noremap true})
          (vim.keymap.set :n :<leader>fz ":lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>" {:noremap true})
          (vim.keymap.set :n :<leader>cm ":lua require('telescope.builtin').git_commits()<CR>" {:noremap true})
          (vim.keymap.set :n :<leader>gt ":lua require('telescope.builtin').git_status()<CR>" {:noremap true})
          (vim.keymap.set :n :<leader>pt ":lua require('telescope.builtin').terms()<CR>" {:noremap true}))
  :config (fn []
            (let [telescope (require :telescope)
                  themes (require :telescope.themes)]
              (telescope.setup {:defaults {:file_ignore_patterns ["node_modules"]
                                           :vimgrep_arguments ["rg"
                                                               "--color=never"
                                                               "--no-heading"
                                                               "--with-filename"
                                                               "--line-number"
                                                               "--column"
                                                               "--smart-case"
                                                               "--iglob"
                                                               "!.git"
                                                               "--hidden"]}
                                :extensions {:ui-select {1 (themes.get_dropdown {})}}
                                :pickers {:find_files {:find_command ["rg"
                                                                      "--files"
                                                                      "--iglob"
                                                                      "!.git"
                                                                      "--hidden"]}}})
              (telescope.load_extension "ui-select")))}]
