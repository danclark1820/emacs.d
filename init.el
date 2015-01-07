(require 'cask "/usr/local/Cellar/cask/0.7.2/cask.el")
(cask-initialize)

(require 'use-package)
;(add-to-list 'load-path "~/.emacs.d")

;(define-prefix-command 'local-map)
;(global-set-key (kbd "C-t") 'local-map)

;(require 'ah-modes)

(defalias 'yes-or-no-p 'y-or-n-p)
(global-subword-mode 1)

(set 'inhibit-startup-screen t)
(setq make-backup-files nil)

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

(require 'ido)
(ido-mode t)

(setq ido-everywhere t
      ido-enable-flex-matching t
      ido-use-virtual-buffers t)

(use-package color-theme-sanityinc-tomorrow
  :init (load-theme 'sanityinc-tomorrow-bright t)
  :config (set-face-attribute 'mode-line nil
                              :box nil))
