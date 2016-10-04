;;; https://harryrschwartz.com/2016/02/15/switching-to-a-literate-emacs-configuration.html

(org-babel-load-file "~/.emacs.d/configuration.org")

; Saving Emacs Sessions
(desktop-save-mode 1)

(global-font-lock-mode 1)

(global-set-key (kbd "C--") 'ace-window)

;;(require 'cl)


;(require 'flymake)
;    (setq flymake-max-parallel-syntax-checks 2)
;    (setq flymake-number-of-errors-to-display 4)




(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)



;;(load-theme 'tango-dark t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (solarized-theme use-package flycheck magit swbuff ace-window company-php company org yaml-mode web-mode twig-mode tabbar sass-mode rainbow-mode phpcbf php+-mode neotree ggtags geben-helm-projectile flymake-yaml flymake-sass flymake-phpcs flymake-php flymake-css ac-php))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
