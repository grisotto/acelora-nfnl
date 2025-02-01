[{1 :CopilotC-Nvim/CopilotChat.nvim
  :lazy false
  :build "make tiktoken"
  :dependencies [:github/copilot.vim
                 :nvim-lua/plenary.nvim]
  :config (fn []
            (let [CopilotChat (require :CopilotChat)]
              (CopilotChat.setup ))) }]
