(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(setq custom-file "~/.emacs-custom.el")
(load custom-file)
