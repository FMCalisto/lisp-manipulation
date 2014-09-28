(defun my-find-if (pred l)
  (if (null l)
      ()
    (if (funcall pred (first l))
        T
      (my-find-if pred (rest l)))))
