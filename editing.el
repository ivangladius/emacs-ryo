
(defun xah-select-line ()
  "Select current line. If region is active, extend selection downward by line.
If `visual-line-mode' is on, consider line as visual line.
URL `http://xahlee.info/emacs/emacs/modernization_mark-word.html'
Version: 2017-11-01 2021-03-19"
  (interactive)
  (if (region-active-p)
      (if visual-line-mode
          (let ((xp1 (point)))
                (end-of-visual-line 1)
                (when (eq xp1 (point))
                  (end-of-visual-line 2)))
        (progn
          (forward-line 1)
          (end-of-line)))
    (if visual-line-mode
        (progn (beginning-of-visual-line)
               (set-mark (point))
               (end-of-visual-line))
      (progn
        (end-of-line)
        (set-mark (line-beginning-position))))))

(provide 'editing)

(defun my-ryo/insert-mode-above ()
  (interactive)
  (beginning-of-line)
  (newline)
  (previous-line)
  (indent-for-tab-command))


(defun my-ryo/insert-mode-below ()
  (interactive)
  (end-of-line)
  (newline)
  (indent-for-tab-command))




