;; init.el

;; This loads the real config file
(require 'org)
(org-babel-load-file
 (expand-file-name "~/.emacs.d/settings.org"))
