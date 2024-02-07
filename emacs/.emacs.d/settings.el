(require 'package)
;; Sets a list of package archive mirrors
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)

;; Keep packages up to date.
(unless package-archive-contents
  (package-refresh-contents))

;; Use-package is a clean macro for package installing and configuration.
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)

(scroll-bar-mode -1)
(menu-bar-mode -1) 
(tool-bar-mode -1)
(column-number-mode 1)
(delete-selection-mode)
(setq-default truncate-lines 1)
(setq-default word-wrap 1)
;(setq split-window-preferred-function 'split-window-horizontally)

;; C indenting
(setq c-default-style "linux"
      c-basic-offset 4)

(defconst *mood-line* "~/.emacs.d/mood-line.el")
(load-file *mood-line*)
(mood-line-mode)

(defconst *theme-directory* "~/.emacs.d/themes/")

(add-to-list 'custom-theme-load-path *theme-directory*)
(load-theme 'zenburn t)
(set-frame-font "Fantasque Sans Mono 16" nil t)

(use-package selectrum
  :ensure t
  :config (selectrum-mode 1))

(use-package selectrum-prescient
  :ensure t)
(selectrum-prescient-mode 1)
(prescient-persist-mode 1)

(use-package which-key
  :ensure t)
(setq which-key-show-early-on-C-h 1)
(setq which-key-idle-delay 0.5)
(setq which-key-idle-secondary-delay 0.05)
(which-key-setup-minibuffer)
(which-key-setup-side-window-bottom)
(setq which-key-popup-type 'minibuffer)
(which-key-mode)

(setq inhibit-startup-message t)

(add-hook 'org-mode-hook
		(lambda () (visual-line-mode)))

     (setq org-agenda-files (directory-files-recursively "~/org/" "\\.org$"))

; Targets include this file and any file contributing to the agenda - up to 9 levels deep
(setq org-refile-targets (quote ((nil :maxlevel . 9))))
     
     (setq org-support-shift-select t)
     (setq org-ellipsis " ▾")
     (set-face-underline 'org-ellipsis nil)

(use-package lsp-mode
  :ensure t
  :config (setq lsp-keymap-prefix "C-l"))

(use-package lsp-ui
  :ensure t)

(use-package flycheck
  :ensure t)

(use-package company
  :ensure t
  :config (setq company-idle-delay 0.01))

(add-hook 'prog-mode-hook
	  (lambda () (progn (display-line-numbers-mode t)
			    (hs-minor-mode t)
			    (setq display-line-numbers-type 'relative))))

(use-package slime :ensure)
(use-package slime-company :ensure)
(setq inferior-lisp-program "/usr/local/bin/sbcl --noinform")
(slime-setup '(slime-fancy slime-company))

(add-hook 'c-mode-hook
	  (lambda () (progn (lsp-deferred)
			    (flycheck-mode t)
			    (company-mode t))))

(add-hook 'c++-mode-hook
	  (lambda () (progn (lsp-deferred)
			    (flycheck-mode t)
			    (company-mode t))))
