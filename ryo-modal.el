

(require 'editing)
(require 'window)

;; (defun my-ryo-insert-mode ()
;;   (interactive)
;;   (if (boundp ryo-modal-mode)
;;       (ryo-modal-mode -1)))

;; (defun my-ryo-normal-mode ()
;;   (interactive)
;;   (if (not (boundp 'ryo-modal-mode))
;;       (ryo-modal-mode)))

;;(define-global-minor-mode ryo-global-mode ryo-modal-mode
;;  (lambda ()
;;    (unless (or minibufferp (bound-and-true-p eshell-mode)) 
;;      (ryo-modal-mode 1))))
;;
<<<<<<< HEAD
=======

;; remove which key weird symbols



(push '((nil . "ryo:.*:") . (nil . "")) which-key-replacement-alist)


>>>>>>> d21b38c (new)
(defun my-ryo-global-mode ()
  (if (not (or (active-minibuffer-window) (eq major-mode 'eshell-mode)))
      (ryo-modal-mode 1)))



(use-package ryo-modal
  :ensure t
  :demand t
  :commands ryo-modal-mode
  :init
  ;; (setq ryo-modal-cursor-color "black"
  ;; 	ryo-modal-default-cursor-color "black")
  
  :bind ([escape] . ryo-modal-mode)
  :config
  (ryo-modal-keys
   ("," ryo-modal-repeat)
   
   ("j" backward-char)
   ("k" next-line)
   ("i" previous-line)
   ("l" forward-char)
   ("e" end-of-line)
   ("a" beginning-of-line)
   ("w" back-to-indentation)

   (";" end-of-line :exit t)
   
   ("h" back-to-indentation :exit t)

   ("n" my-ryo/insert-mode-above :exit t)
   ("m" my-ryo/insert-mode-below :exit t)

   ("s" isearch-forward)

   ("c" kill-ring-save)

   
   ("u" backward-word)
   ("o" forward-word)
   ("[" backward-paragraph)
   ("]" forward-paragraph)
   
   ("x" delete-char)

   ("y" undo)

   ("0" avy-goto-char)
   ("9" avy-goto-line)

   ("SPC [" yank))

  (ryo-modal-keys
   ("d"
    (("o" kill-word)
     ("u" backward-kill-word)
     ("k" kill-line)
     ("l" kill-whole-line)
     ("v" kill-region)))
   ("v"
    (("l" xah-select-line)
     ("p" mark-paragraph)
     ("b" mark-whole-buffer))))

  (ryo-modal-key
   "SPC i"
   '(("d" dired)))

  ;; LAUNCH
  (ryo-modal-key
   "SPC l"
   '(("e" eshell)))
	 

  (ryo-modal-key
   "SPC"
   '(("m" dired-jump)
     ("k" kill-current-buffer)
	 ))

  (ryo-modal-keys
   (:norepeat t)
   ("SPC s" "C-x C-s"))

  (ryo-modal-key
   "SPC"
   '(("1" delete-other-windows)
     ("2" delete-window)
     ("3" split-right)
     ("4" split-below)
     ("-" end-of-buffer)
     ("9" beginning-of-buffer)))

  ;; ELISP
  (ryo-modal-major-mode-keys
   'emacs-lisp-mode
   ("SPC o"
    (("e" eval-last-sexp)
     ("d" eval-defun)
<<<<<<< HEAD
	 ("c" comment-or-uncomment-region))))
=======
     ("c" comment-or-uncomment-region))))
>>>>>>> d21b38c (new)

  ;; ;; ISEARCH
  ;; (ryo-modal-major-mode-keys
  ;;  'isearch-mode
  ;;  ("SPC"
  ;;   (("<tab>" isearch-repeat-forward))))
  

  (ryo-modal-mode))

;; (defun my-ryo/mode-line ()
;;   (if (not ryo-modal-mode)
;;       (set-face-attribute 'mode-line nil
;; 			  :foreground "#FFFFFF"
;; 			  :background "#000000")
;;     (set-face-attribute 'mode-line nil
;; 			:foreground "#a52a2a"
;; 			:background "#e1d8b3")))




;; (add-hook 'post-command-hook #'my-ryo/mode-line)
(add-hook 'buffer-list-update-hook 'my-ryo-global-mode)
