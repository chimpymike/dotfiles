;; Load all packages

(require 'package)

;; Add melpa repos
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

;; Install packages from specific repos
;; This is essentially for controlling the version of the packages
(setq package-pinned-packages '((cider . "melpa-stable")
                                (clojure-mode . "melpa-stable")
                                (dash . "melpa-stable")
                                (company . "melpa-stable")))

;;  Initialize the package system
(package-initialize)

;; Refresh the package list if needed
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar required-packages
  '(solarized-theme
    clojure-mode
    paredit
    cider
    rainbow-delimiters
    init-loader
    ido-ubiquitous
    smex
    rvm
    inf-ruby
    yasnippet
    projectile
    exec-path-from-shell
    midje-mode
    markdown-mode
    company)
  "Packages which should be installed upon launch")

;; Install all required packages that are not currently installed
(dolist (p required-packages)
  (when (not (package-installed-p p))
    (package-install p)))
