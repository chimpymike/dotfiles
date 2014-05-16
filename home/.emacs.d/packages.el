;; Load all packages

(require 'package)

;; Add melpa repo and initialize the package system
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
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
    yasnippet)
  "Packages which should be installed upon launch")

;; Install all required packages that are not currently installed
(dolist (p required-packages)
  (when (not (package-installed-p p))
    (package-install p)))



