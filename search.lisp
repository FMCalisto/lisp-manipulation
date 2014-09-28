(defun search (list obj)
  (dolist (el list nil)
    (when (equal el obj)
      (return obj))))
