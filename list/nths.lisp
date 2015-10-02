(defun nths (n l)"returns list of nths of a list of lists l"
  (nths-aux n l '()))

(defun nths-aux (n l A)
  (if (null l) A;or (reverse A)
   (nths-aux n (cdr l)  (cons (nth n (car l)) A))))
