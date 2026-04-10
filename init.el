;; i suck
;; this config sucks
;; my skills suck

;; reminder: learn or suck
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
;; makes pasting on a selection replace it
(delete-selection-mode 1)
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)
(setq inhibit-startup-screen t)

;; makes customize edit this file instead of this file
(setq custom-file (file-name-concat user-emacs-directory "custom.el"))
(load custom-file)

(use-package custom-scratch
  :load-path (file-name-concat user-emacs-directory "elisp"))
