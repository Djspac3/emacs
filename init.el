;; i suck
;; this config sucks
;; my skills suck

;; debuging, its good
(setq use-package-verbose t
      use-package-expand-minimally nil
      use-package-compute-statistics t
      debug-on-error t)

;; reminder: learn or suck
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(electric-pair-mode 1)
;; makes pasting on a selection replace it
(delete-selection-mode 1)
;; forgetfull
(which-key-mode 1)
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)
(setq inhibit-startup-screen t)
(setq default-directory user-emacs-directory)
;; i like folding
(add-hook 'prog-mode-hook #'hs-minor-mode)



;; makes customize edit this file instead of this file
(setq custom-file (file-name-concat user-emacs-directory "custom.el"))
(load custom-file)

;; local packages
(eval-and-compile
  (defvar dj/elisp-dir (file-name-concat user-emacs-directory "elisp")
    "local elisp dir for putting stuff"))

(use-package languages
  :load-path dj/elisp-dir)

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
      ("nongnu" . "https://elpa.nongnu.org/nongnu/")
      ("melpa" . "https://melpa.org/packages/")))

;; completion (:
(setq tab-always-indent 'complete)
(use-package corfu
  :init
  (global-corfu-mode))

(use-package general
  :ensure t
  :config
  (general-create-definer dj/leader-def
			  :prefix "C-c")

  (dj/leader-def
   "f" '(:ignore t :wk "folding")
   "ff" '(hs-toggle-hiding :wk "toggle")
   "fh" '(hs-hide-all :wk "hide all")
   "fs" '(hs-show-all :wk "show all")
   "fl" '(hs-hide-level :wk "fold level"))

  ;; todo add more
  )
