(defun replace (old new l)
  (if (null l)
      ()
    (if (equal old (first l))
        (cons new (replace old new (rest l)))
      (cons (first l) (replace old new (rest l))))))
