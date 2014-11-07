;; Load all packages

(require 'package)

;; Add melpa repo
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)

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
    markdown-mode)
  "Packages which should be installed upon launch")

;; Install all required packages that are not currently installed
(dolist (p required-packages)
  (when (not (package-installed-p p))
    (package-install p)))
