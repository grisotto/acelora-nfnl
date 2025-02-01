;generic mapping leaders configuration
(vim.keymap.set :n :<space> :<nop> {:noremap true})

;clear highlighting on enter in normal mode
(vim.keymap.set :n :<CR> ":noh<CR><CR>" {:noremap true})

;duplicate currents panel in a new tab
(vim.keymap.set :n :<C-w>T ":tab split<CR>" {:noremap true :silent true})

;escape from terminal normal mode
(vim.keymap.set :t :<esc><esc> "<c-\\><c-n>" {:noremap true})

; switch window left
(vim.keymap.set :n :<C-h> "<C-w>h" {:desc "switch window left"})

; switch window right
(vim.keymap.set :n :<C-l> "<C-w>l" {:desc "switch window right"})

; switch window down
(vim.keymap.set :n :<C-j> "<C-w>j" {:desc "switch window down"})

; switch window up
(vim.keymap.set :n :<C-k> "<C-w>k" {:desc "switch window up"})

; jj to exit insert mode
(vim.keymap.set :i :jj "<Esc>" {:noremap true})

;; split horizontal
(vim.keymap.set :n :<leader>w "<C-w>v<C-w>l" {:desc "split horizontal"})

;; split vertical
(vim.keymap.set :n :<leader>v "<C-w>s<C-w>l" {:desc "split vertical"})

;; general save file
(vim.keymap.set :n :<C-s> "<cmd>w<CR>" {:desc "general save file"})

;; buffer new
(vim.keymap.set :n :<leader>b "<cmd>enew<CR>" {:desc "buffer new"})

;; buffer goto next
(vim.keymap.set :n :<tab> "<cmd>bnext<CR>" {:desc "buffer goto next"})

;; buffer goto prev
(vim.keymap.set :n :<S-tab> "<cmd>bprev<CR>" {:desc "buffer goto prev"})

;; close buffer
(vim.keymap.set :n :<leader>x "<cmd>bd<CR>" {:desc "close buffer"})

(fn get-current-form []
  "Get the form under cursor using Conjure's extract API"
  (let [extract (require :conjure.extract)]
    (extract.form {})))

(fn macro-expand []
  (let [form-data (get-current-form)
        form-content (. form-data :content)
        cmd (.. "(clojure.walk/macroexpand-all '" form-content ")")
        eval-module (require :conjure.eval)]
    (eval-module.eval-str 
     {:code cmd
      :origin :macroexpand-shortcut})))

(vim.keymap.set :n "<localleader>me" macro-expand {:desc "Macro expand form"})

(fn debug-macro-expand []
  (let [form-data (get-current-form)
        form-content (. form-data :content)
        eval-module (require :conjure.eval)]
    ;; First evaluate what we got from the cursor
    (eval-module.eval-str 
     {:code (.. "\"Form under cursor: " form-content "\"")
      :origin :debug-cursor-content})
    ;; Then do the macro expansion
    (eval-module.eval-str 
     {:code (.. "(clojure.walk/macroexpand-all '" form-content ")")
      :origin :debug-macro-expand})))

(vim.keymap.set :n "<localleader>mde" debug-macro-expand {:desc "Debug + Macro expand form"})

{}
