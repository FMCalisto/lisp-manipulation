(defun has-list-p(l)
  ;nothing more to check - return nil - no inner lists
  (if (null l)
  nil
  ;the first element of the list is a list?
  (if (listp (car l))
      ;if yes - return true
      t
      ;otherwise - try for the cdr of the list
   (has-list-p (cdr l)))))
