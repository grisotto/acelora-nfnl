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
{}
