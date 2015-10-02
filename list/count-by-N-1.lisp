;;;; Finding the difference in an arithmetic progression ;;;;
;;;; http://stackoverflow.com/questions/31221824/finding-the-difference-in-an-arithmetic-progression-in-lisp/ ;;;;

(defun count-by-N-1 (lst)
  (if (equal NIL lst)
    lst
    (- (cadr lst) (car lst))
  )
  (count-by-N-1 (cdr lst))
)
