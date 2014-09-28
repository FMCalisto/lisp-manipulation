(defun inverte (l &optional res)
  (if (null l)
     res
    (inverte (rest l) (cons (first l) res))))
