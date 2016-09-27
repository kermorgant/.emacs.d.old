;; read that : http://ergoemacs.org/emacs/emacs_package_system.html
 (when (>= emacs-major-version 24)
   (require 'package)
   (add-to-list
    'package-archives
    '("melpa" . "http://melpa.org/packages/")
    t)
   (package-initialize))
;;'("melpa-stable" . "https://stable.melpa.org/packages/")

(global-font-lock-mode 1)

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
	       (when (derived-mode-p 'php-mode)
		 (ggtags-mode 1))	       
               (require 'ac-php)
               (setq ac-sources  '(ac-source-php ) )
               (yas-global-mode 1)
               (define-key php-mode-map  (kbd "C-=") 'ac-php-find-symbol-at-point)   ;goto define
               (define-key php-mode-map  (kbd "C-t") 'ac-php-location-stack-back   ) ;go back
               )
	    '(lambda () (add-to-list 'write-file-functions 'delete-trailing-whitespace))
	    )


(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.md\\'" . web-mode))	     
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))

(require 'twig-mode)
(add-to-list 'auto-mode-alist '("\\.html.twig\\'" . twig-mode))

(require 'yaml-mode)
    (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

(require 'flymake)
    (setq flymake-max-parallel-syntax-checks 2)
    (setq flymake-number-of-errors-to-display 4)

(autoload 'geben "geben" "DBGp protocol frontend, a script debugger" t)

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(load-theme 'tango-dark t)

