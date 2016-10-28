;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;(package-initialize)

(org-babel-load-file "~/.emacs.d/configuration.org")



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
    (htmlize notmuch ox-html5slide ox-reveal auto-dictionary prodigy mu4e-maildirs-extension js2-mode scss-mode multi-term yaml-mode web-mode use-package twig-mode tabbar swbuff solarized-theme sass-mode rainbow-mode phpcbf php+-mode org-bullets org neotree magit ggtags geben-helm-projectile flymake-yaml flymake-sass flymake-phpcs flymake-php flymake-css flycheck dockerfile-mode company-php ace-window ac-php))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
