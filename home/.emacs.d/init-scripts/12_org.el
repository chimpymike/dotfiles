;; Org mode configuration

;; Org mode keybindings
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)

;; Default directory where org files are located
(setq org-directory "/Users/chimpymike/Documents/Thule/thule_orgmode_projects")

;; Include all org files in org agenda
(setq org-agenda-files (list org-directory))

;; MobileOrg setup
;;;; File where new notes from MobileOrg will be stored
(setq org-mobile-inbox-for-pull "~/Dropbox/org/flagged.org")
;;;; MobileOrg directory
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")

;; Org capture templates
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "projects.org" "Tasks")
         "* TODO %?")
        ("i" "Inbox" entry (file+headline "projects.org" "Inbox")
         "* %?")))
