;; read that : http://ergoemacs.org/emacs/emacs_package_system.html
 (when (>= emacs-major-version 25)
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
	       (when (derived-mode-p 'php-mode)
		 (ggtags-mode 1))
               )
	    '(lambda () (add-to-list 'write-file-functions 'delete-trailing-whitespace))
	    )



(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.md\\'" . web-mode))	     
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html.twig\\'" . web-mode))


(require 'yaml-mode)
    (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

(require 'flymake)
    (setq flymake-max-parallel-syntax-checks 2)
    (setq flymake-number-of-errors-to-display 4)

(autoload 'geben "geben" "DBGp protocol frontend, a script debugger" t)


(dolist (func '(tabbar-mode tabbar-forward-tab tabbar-forward-group tabbar-backward-tab tabbar-backward-group))
  (autoload func "tabbar" "Tabs at the top of buffers and easy control-tab navigation"))

(defmacro defun-prefix-alt (name on-no-prefix on-prefix &optional do-always)
  `(defun ,name (arg)
     (interactive "P")
     ,do-always
     (if (equal nil arg)
	 ,on-no-prefix
       ,on-prefix)))

(defun-prefix-alt shk-tabbar-next (tabbar-forward-tab) (tabbar-forward-group) (tabbar-mode 1))
(defun-prefix-alt shk-tabbar-prev (tabbar-backward-tab) (tabbar-backward-group) (tabbar-mode 1))

(global-set-key [(control tab)] 'shk-tabbar-next)
(global-set-key [(control shift tab)] 'shk-tabbar-prev)


(load-theme 'tango-dark t)

