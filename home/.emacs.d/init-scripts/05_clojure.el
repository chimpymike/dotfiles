;; Use paredit in clojure-mode
(add-hook 'clojure-mode-hook 'paredit-mode)

;; Use paredit in nrepl-mode
(add-hook 'cider-repl-mode-hook 'paredit-mode)

;; Use rainbow-delimiters in clojure-mode
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

;; Use rainbow-delimiters in nrepl-mode
(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)

;; Use eldoc (function arguments in echo area) in clojure buffers
(add-hook 'cider-mode-hook #'eldoc-mode)
;;(add-hook 'clojure-mode-hook 'cider-mode)
;;(add-hook 'cider-interaction-mode-hook 'cider-turn-on-eldoc-mode)
