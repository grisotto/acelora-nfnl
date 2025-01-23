[{1 :nvim-treesitter/nvim-treesitter
  :build ":TSUpdate"
  :config (fn []
            (let [treesitter (require :nvim-treesitter.configs)]
              (treesitter.setup {:highlight {:enable true}
                                 :indent {:enable true}
                                 :ensure_installed [:bash
                                                    :clojure
                                                    :commonlisp
                                                    :dockerfile
                                                    :fennel
                                                    :python
                                                    :html
                                                    :java
                                                    :angular
                                                    :typescript
                                                    :javascript
                                                    :json
                                                    :diff
                                                    :sql
                                                    :yaml
                                                    :lua
                                                    :markdown
                                                    :yaml]})))}]
