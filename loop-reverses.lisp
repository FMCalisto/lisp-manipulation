(defun inverte (lista &aux res)
  (loop
    (when (null lista)
      (return res))
    (setf res (cons (first lista) res)
        lista (rest lista))))
