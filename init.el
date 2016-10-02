;; read that : http://ergoemacs.org/emacs/emacs_package_system.html
 (when (>= emacs-major-version 24)
   (require 'package)
   (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/")  t)
   (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
   (package-initialize))
;;'("melpa-stable" . "https://stable.melpa.org/packages/")

(global-font-lock-mode 1)

(global-set-key (kbd "C--") 'ace-window)

(require 'swbuff)
(global-set-key [(control tab)] 'swbuff-switch-to-next-buffer)

(global-set-key (kbd "M-<left>")  'windmove-left)
(global-set-key (kbd "M-<right>") 'windmove-right)
(global-set-key (kbd "M-<up>")    'windmove-up)
(global-set-key (kbd "M-<down>")  'windmove-down)

(defun neotree-project-dir ()
  "Open NeoTree using the git root."
  (interactive)
  (let ((project-dir (projectile-project-root))
	(file-name (buffer-file-name)))
    (if project-dir
	(if (neotree-toggle)
	    (progn
	      (neotree-dir project-dir)
	      (neotree-find file-name)))
      (message "Could not find git project root."))))

(global-set-key [f8] 'neotree-project-dir)
(require 'neotree)

(global-set-key [f8] 'neotree-toggle)
(setq neo-smart-open t)
(setq neo-window-width 40)

(setq projectile-switch-project-action 'neotree-projectile-action)
(setq projectile-keymap-prefix (kbd "C-c C-p"))
(projectile-global-mode)

(require 'php-mode)
(setq auto-mode-alist
  (append '(("\.php$" . php-mode)
            ("\.module$" . php-mode))
              auto-mode-alist))
(eval-after-load 'php-mode
  '(require 'php-ext))

(require 'cl)

(add-hook 'php-mode-hook
	  '(lambda ()
	     (auto-complete-mode t)
	     (require 'ac-php)
	     (setq ac-sources  '(ac-source-php ) )
	     (yas-global-mode 1)
	     (define-key php-mode-map  (kbd "C-=") 'ac-php-find-symbol-at-point)   ;goto define
	     (define-key php-mode-map  (kbd "C-t") 'ac-php-location-stack-back   ) ;go back
	     ))

(add-hook 'php-mode-hook
          '(lambda ()
	     (require 'company-php)
	     (company-mode t)
             (add-to-list 'company-backends 'company-ac-php-backend )
	     ))

(add-hook 'php-mode-hook
          '(lambda ()
	     (when (derived-mode-p 'php-mode)
	       (ggtags-mode 1))
	     )
	  )
(add-hook 'php-mode-hook
	  '(lambda ()
	     (add-to-list 'write-file-functions 'delete-trailing-whitespace))
	  )
(add-hook 'php-mode-hook 'php-enable-symfony2-coding-style)


(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.md\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html.twig\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(setq web-mode-enable-css-colorization t)
(setq web-mode-enable-current-element-highlight t)
(setq web-mode-ac-sources-alist
  '(("css" . (ac-source-css-property))
    ("html" . (ac-source-words-in-buffer ac-source-abbrev))))
(setq web-mode-code-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-markup-indent-offset 2)

;; padding
;; For <style> parts
(setq web-mode-style-padding 1)
;; For <script> parts
(setq web-mode-script-padding 1)
;; For multi-line blocks
(setq web-mode-block-padding 0)

(require 'twig-mode)

(require 'yaml-mode)
    (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

(require 'flymake)
    (setq flymake-max-parallel-syntax-checks 2)
    (setq flymake-number-of-errors-to-display 4)

(autoload 'geben "geben" "DBGp protocol frontend, a script debugger" t)

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

(load-theme 'tango-dark t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (swbuff ace-window company-php company org yaml-mode web-mode twig-mode tabbar sass-mode rainbow-mode phpcbf php+-mode neotree ggtags geben-helm-projectile flymake-yaml flymake-sass flymake-phpcs flymake-php flymake-css ac-php))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
