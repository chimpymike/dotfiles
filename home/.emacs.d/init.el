;; Add config directory to the load path
(add-to-list 'load-path "~/.emacs.d")

;; Load all packages
(load "packages")

;; Set solarized-dark as the default theme
(load-theme 'solarized-dark t)

;; Use paredit in clojure-mode
(add-hook 'clojure-mode-hook 'paredit-mode)

;; Use paredit in nrepl-mode
(add-hook 'nrepl-mode-hook 'paredit-mode)

;; Use rainbow-delimiters in clojure-mode
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

;; Use rainbow-delimiters in nrepl-mode
(add-hook 'nrepl-mode-hook 'rainbow-delimiters-mode)

;; Use spaces for indentation
(setq-default indent-tabs-mode nil)

;; Auto indent
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Use a separate file for customizations added
;; from Emacs customization interface
(setq custom-file ".emacs-custom")
(load custom-file)
