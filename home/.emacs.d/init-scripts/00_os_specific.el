;;;; OS X specific init
(if (string-equal system-type "darwin")
    ;; Set the ls for dired to gls
    ;; Need to install coreutils from homebrew
    (setq insert-directory-program "/usr/local/bin/gls"))
