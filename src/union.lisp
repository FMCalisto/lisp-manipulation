(defun 	union 	(l1 l2)
	(if 	(null l1)
		l2
	(cons 	(first l1)
		(union	(rest l1)
			l2))))
