

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package company
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  (setq company-dabbrev-downcase 0)
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 1))
  
(use-package lsp-mode
  :ensure t
  :config
  (setq gc-cons-threshold 100000000)
  (setq read-process-output-max (* 1024 1024))
  (setq lsp-idle-delay 0.500)
  (setq lsp-log-io nil)

  (setq lsp-enable-symbol-highlighting nil)
  (setq lsp-ui-doc-enable nil)
  (setq lsp-lens-enable nil)
  (setq lsp-headerline-breadcrumb-enable nil)
  (setq lsp-ui-sideline-enable nil)
  (setq lsp-ui-sideline-show-code-actions nil)
  (setq lsp-ui-sideline-enable nil)
  (setq lsp-modeline-code-actions-enable nil)
  (setq lsp-ui-sideline-enable nil)
  (setq lsp-modeline-diagnostics-enable nil)
  (setq lsp-signature-auto-activate nil))
  ;; you could manually request them via `lsp-signature-activate`)

;; PYTHON
(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright))))

(use-package lsp-java
  :ensure t)

;; V  :hook (java-mode . (lambda ()
;;                           (require 'lsp-java))))

(use-package lsp-ivy
  :ensure t)

(use-package smartparens
  :ensure t)

;; (use-package dap-mode
;;   :ensure t)
  
