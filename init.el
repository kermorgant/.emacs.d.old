;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(eval-when-compile
  (add-to-list 'load-path "~/.emacs.d/lisp")
  (require 'use-package))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/")  t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")
(add-to-list 'load-path "#/.emacs.d/lisp")
(package-initialize)

;; Make sure Org is installed
(unless (package-installed-p 'org)
  (package-refresh-contents)
  (package-install 'org))

;; Org plus contrib needs to be loaded before any org related functionality is called
(unless (package-installed-p 'org-plus-contrib)
  (package-refresh-contents)
  (package-install 'org-plus-contrib))

(org-babel-load-file "~/.emacs.d/configuration.org")
