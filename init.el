;;; init.el --- Where all the magic begins
;;; Commentary:
;;;
;;; This file allows Emacs to initialize my customizations
;;; in Emacs lisp embedded in *one* literate Org-mode file.
;;; Code:

;; This sets up the load path so that we can override it
(package-initialize nil)
;; Override the packages with the git version of Org and other packages
(add-to-list 'load-path "~/.emacs.d/site-lisp/org-mode/lisp/")

;; Load the rest of the packages
(unless package--initialized (package-initialize t))
(setq package-enable-at-startup nil)
(setq byte-compile-warnings '(cl-functions))

(require 'org)
(org-babel-load-file "~/.emacs.d/emacs.org")

;; Keep emacs Custom-settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;;; init.el ends here
