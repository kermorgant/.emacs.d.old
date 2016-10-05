;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;(package-initialize)

(org-babel-load-file "~/.emacs.d/configuration.org")

; Saving Emacs Sessions
(desktop-save-mode 1)

(global-font-lock-mode 1)

(global-set-key (kbd "C--") 'ace-window)




(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
