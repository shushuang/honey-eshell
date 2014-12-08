;;; TODO
;;;    ways to manage multiple eshells
;;;
(defun honey-eshell-open ()
  "Split a  window and run eshell in it."
  (if (get-buffer-window "*Honey-Eshell*")
      (message "exists")
    (progn
     (split-window-vertically)
     (if (get-buffer "*Honey-Eshell*")
         (progn
          (message "exists")
          (display-buffer "*Honey-Eshell*"))
       (progn
         (eshell)
         (rename-buffer "*Honey-Eshell*")
         ))
     (select-window (get-buffer-window "*Honey-Eshell*"))
     (goto-char (point-max))
     )
    ))

(defun honey-eshell-close ()
 "Close opened eshell window."
  (delete-window (get-buffer-window "*Honey-Eshell*")))

(defun honey-eshell-toogle () 
  "Toogle eshell window."
  (interactive)
  (if (get-buffer-window "*Honey-Eshell*")
      (ss-eshell-close)
    (ss-eshell-open)))
