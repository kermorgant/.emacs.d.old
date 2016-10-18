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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (company-php nginx-mode multi-term org-bullets yaml-mode web-mode use-package-chords twig-mode swbuff solarized-theme scss-mode rainbow-mode projectile php-mode org neotree markdown-mode magit ggtags flymake-php flymake-css flycheck dockerfile-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
