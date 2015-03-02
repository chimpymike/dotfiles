;; Add package config directory to the load path
(add-to-list 'load-path "~/.emacs.d/pkg-config")

;; Load all packages
(load "packages")

;; Load init-scripts
;;;; Don't display the init loader log after load
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/init-scripts")

;; Use spaces for indentation
(setq-default indent-tabs-mode nil)

;; Auto indent
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Use a separate file for customizations added
;; from Emacs customization interface
(setq custom-file ".emacs-custom")
(load custom-file)
