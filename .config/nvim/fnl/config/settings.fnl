(local {: autoload} (require :nfnl.module))
(local str (autoload :nfnl.string))
(local core (autoload :nfnl.core))

;don't wrap lines
(set vim.wo.wrap false)

;sets a nvim global options
(let [options
      {;default encoding
       :encoding "utf-8"
       ;tabs is space
       :expandtab true
       ;tab/indent size
       :tabstop 2
       :shiftwidth 2
       :softtabstop 2
       ;settings needed for compe autocompletion
       :completeopt "menuone,noselect"
       ;case insensitive search
       :ignorecase true
       ;smart search case
       :smartcase true
       ;shared clipboard with linux
       :clipboard "unnamedplus"
       ;show line numbers
       :number true
       ;show invisible characters
       :list true
       :listchars (str.join "," ["tab:▶-" "trail:•" "extends:»" "precedes:«" "eol:¬"])
       ;show line and column number
       :ruler true
       ;makes signcolumn always one column with signs and linenumber
       :signcolumn "number"
       ;persistent undo
       :undofile true
       ;open new horizontal panes on down pane
       :splitbelow true
       ;open new vertical panes on right pane
       :splitright true
       ;enable highlighting search
       :hlsearch true
       }]
  (each [option value (pairs options)]
    (core.assoc vim.o option value)))

{}
