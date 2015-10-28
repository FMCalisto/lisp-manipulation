;;;; Recursively the function inserts end receiving a x element into a list
;;;; and inserts the element at the end of the list.
;;;; > (list-insert-end 5 '(1 2 4 6))
;;;; (1 2 4 6 5)
;;;; > (list-insert-end 4 '(1 2))
;;;; (1 2 4)

(defun list-insert-end (num lst)
	(if (null lst)
		(cons num nil)
		(cons (first lst) (list-insert-end num (rest lst)))))
