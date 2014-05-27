;; Load all packages

(require 'package)

;; Add melpa repo
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; Add org mode repo
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/") t)
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
    org
    exec-path-from-shell)
  "Packages which should be installed upon launch")

;; Install all required packages that are not currently installed
(dolist (p required-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Install latest version of org mode
;; Needed to install over the outdated
;; built in org mode package that comes
;; with emacs
(when (not (package-installed-p 'org (list 8 0)))
  (package-install 'org))




