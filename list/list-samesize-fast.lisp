(defun samesize (l1 l2)
  (apply #'= (mapcar #'length (list l1 l2)))
