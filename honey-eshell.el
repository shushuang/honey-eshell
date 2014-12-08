;;; TODO
;;;    ways to manage multiple eshells
;;;
(defun honey-eshell-open ()
  "Split a  window and run eshell in it."
     (split-window-vertically)
     (if (get-buffer "*Honey-Eshell*")
         (display-buffer "*Honey-Eshell*")
       (progn
         (eshell)
         (rename-buffer "*Honey-Eshell*")
         ))
     (select-window (get-buffer-window "*Honey-Eshell*"))
     (goto-char (point-max)))


(defun honey-eshell-close ()
 "Close opened eshell window."
  (delete-window (get-buffer-window "*Honey-Eshell*")))

(defun honey-eshell-toogle () 
  "Toogle eshell window."
  (interactive)
  (if (get-buffer-window "*Honey-Eshell*")
      (honey-eshell-close)
    (honey-eshell-open)))
