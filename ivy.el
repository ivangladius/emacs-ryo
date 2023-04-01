
(require 'window)

(use-package smex
  :ensure t)

(use-package counsel
  :ensure t)

(use-package ivy
  :ensure t
  :init
  (setq ivy-use-virtual-buffers t
	enable-recursive-minibuffers t
	ivy-height 25)
  :bind (("M-x" . counsel-M-x))
  :ryo
  ("SPC ]" counsel-yank-pop)
  ("SPC i"
   (("e" counsel-find-file)
    ("r" counsel-recentf)))
  ("SPC f"
   (("e" ivy-switch-buffer)
    ("d" last-buffer)))
  :config
  (ivy-mode))


  
