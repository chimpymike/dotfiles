;; Add marmalade repo and initialize the package system
(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Use a separate file for customizations added
;; from Emacs customization interface
(setq custom-file "~/.emacs-custom.el")
(load custom-file)
