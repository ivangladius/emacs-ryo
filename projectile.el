

(use-package projectile
  :after ryo-modal
  :ensure t
  :init
  (projectile-mode +1)
  :ryo
  ("SPC p" projectile-command-map))
