
(defvar my-term-shell "/bin/bash")
(defadvice ansi-term (before force-bash)
  (interactive (list my-term-shell)))
(ad-activate 'ansi-term)

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode))))

(use-package which-key
  :ensure t
  :init (which-key-mode))

(tool-bar-mode -1)

(scroll-bar-mode -1)

(show-paren-mode 1)

(setq inhibit-startup-message t)

(setq scroll-conservatively 100)

(setq ring-bell-function 'ignore)

(when window-system (global-hl-line-mode t))
(set-face-background hl-line-face "gray13")

(use-package symon
  :ensure t
  :bind
  ("s-h" . symon-mode))

(use-package beacon
  :ensure t
  :config
  (beacon-mode 1))

(defalias 'yes-or-no-p 'y-or-n-p)

(global-set-key (kbd "<s-return>") 'ansi-term)

(setq ido-enable-flex-matching nil)
(setq ido-create-new-buffer 'always)
(setq ido-everywhere t)
(ido-mode 1)

(use-package ido-vertical-mode
  :ensure t
  :init
  (ido-vertical-mode 1))
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

(use-package smex
  :ensure t
  :init (smex-initialize)
  :bind
  ("M-x" . smex))

(global-set-key (kbd "C-x C-b") 'ido-switch-buffer)

(global-set-key (kbd "C-x b") 'ibuffer)
