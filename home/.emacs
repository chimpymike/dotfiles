;; Add marmalade repo and initialize the package system
(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Set solarized-dark as the default theme
(load-theme 'solarized-dark t)

;; Use paredit in clojure-mode
(add-hook 'clojure-mode-hook 'paredit-mode)

;; Use rainbow-delimiters in clojure-mode
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

;; Use spaces for indentation
(setq-default indent-tabs-mode nil)

;; Auto indent
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Use a separate file for customizations added
;; from Emacs customization interface
(setq custom-file "~/.emacs-custom.el")
(load custom-file)
