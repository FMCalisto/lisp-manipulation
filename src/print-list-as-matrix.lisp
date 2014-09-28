(defun print-list-as-matrix
    (list elements-per-row
     &optional (cell-width (1+ (truncate (log (apply #'max list) 10)))))
  (let ((*print-right-margin* (* elements-per-row (1+ cell-width)))
        (*print-miser-width* nil)
        (*print-pretty* t)
        (format-string (format nil "~~<~~@{~~~ad~~^ ~~}~~@:>~%" cell-width)))
    (format t format-string list)))
