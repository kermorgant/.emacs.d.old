;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;(package-initialize)


(eval-when-compile
  (add-to-list 'load-path "~/.emacs.d/lisp")
  (require 'use-package))

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/")  t)
  (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

  (add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")
  (add-to-list 'load-path "#/.emacs.d/lisp"))
(package-initialize)


(org-babel-load-file "~/.emacs.d/configuration.org")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (elscreen-persist elscreen persp-projectile undo-tree find-file-in-project htmlize php-auto-yasnippets notmuch ox-html5slide ox-reveal auto-dictionary prodigy mu4e-maildirs-extension js2-mode scss-mode multi-term yaml-mode web-mode use-package twig-mode tabbar swbuff solarized-theme sass-mode rainbow-mode phpcbf php+-mode org-bullets org neotree magit ggtags geben-helm-projectile flymake-yaml flymake-sass flymake-phpcs flymake-php flymake-css flycheck dockerfile-mode company-php ace-window ac-php))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
