;; Use RVM's default ruby
(rvm-use-default)

;; Set pry as the default ruby repl process
(setq inf-ruby-default-implementation "pry")

;; Use paredit in ruby-mode
(add-hook 'ruby-mode-hook 'paredit-mode)

;; Use rainbow-delimiters in ruby-mode
(add-hook 'ruby-mode-hook 'rainbow-delimiters-mode)
