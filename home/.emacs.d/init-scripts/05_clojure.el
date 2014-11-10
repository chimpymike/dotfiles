;; Use paredit in clojure-mode
(add-hook 'clojure-mode-hook 'paredit-mode)

;; Use paredit in nrepl-mode
(add-hook 'cider-repl-mode-hook 'paredit-mode)

;; Use rainbow-delimiters in clojure-mode
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

;; Use rainbow-delimiters in nrepl-mode
(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)
