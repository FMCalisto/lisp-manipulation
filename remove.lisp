(defun remove (obj l)
  (cond ((null l) ())
    ((equal obj (first l)) (remove obj (rest l)))
    (t (cons (first l) (remove obj (rest l))))))
