;;;; A function filter lists that takes as arguments an integer list and a predicate and
;;;; returns a new list containing the elements of the original list checking the predicate.

;;;; For example (note that mod returns the remainder of the integer division)
;;;; > (list-filter '(1 2 3 4 5 6) #' (lambda (x) (zerop (3 x mod))))
;;;; (3 6)

(defun list-filter (lst pred)
  (if (null lst)
  	NIL
  	(if (funcall pred (car lst))
  		(cons (first lst)
  			(list-filter (rest lst) pred))
  		(list-filter (rest lst) pred)
  	)
  )
)

;;;; Thanks to Rodrigo Lourenco (@rzlourenco)