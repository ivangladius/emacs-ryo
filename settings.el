
;; (shell-command "xmodmap ~/.Xmodmap")



(use-package doom-themes
  :ensure t)

(load-theme 'doom-gruvbox-light t)

;;(global-display-line-numbers-mode 1)
;;(setq display-line-numbers-type 'relative)


(set-face-attribute 'default nil
                    :family "Hack"
                    :height 130
                    :weight 'normal
                    :width 'normal)



(setq inhibit-splash-screen t)
(transient-mark-mode 1)

(setq make-backup-files nil)
(setq auto-save-default nil)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)


;; (setq display-line-numbers 'relative)
;; (global-display-line-numbers-mode
 


(setq mode-line-modes
      (mapcar (lambda (elem)
                (pcase elem
                  (`(:propertize (,_ minor-mode-alist . ,_) . ,_)
                   "")
                  (t elem)))
              mode-line-modes))


(display-time-mode 1)


(setq indent-tabs-mode t)
(setq tab-width 4)

(setq dired-listing-switches "-allht")
