;;;; OS X specific init
(if (string-equal system-type "darwin")
    (progn
      ;; Set the ls for dired to gls
      ;; Need to install coreutils from homebrew
      ;;(setq insert-directory-program "/usr/local/bin/gls")
      ;; Set dynamic library load path for Oracle
      ;;(setenv "DYLD_LIBRARY_PATH" "/Users/chimpymike/Applications/instantclient_10_2")
      (exec-path-from-shell-initialize)))
