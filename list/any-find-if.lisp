(defun any-find-if (pred l)
  (if (null l)
      ()
    (if (funcall pred (first l))
        T
      (any-find-if pred (rest l)))))
