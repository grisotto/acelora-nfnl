[{1 :zbirenbaum/copilot.lua
  :event "InsertEnter"
  :lazy false
  :cmd "Copilot"
  :config (fn []
            (let [copilot (require :copilot)]
              (copilot.setup {
                              :suggestion  {
                                            :auto_trigger true
                                            }
                              } ))) }]
