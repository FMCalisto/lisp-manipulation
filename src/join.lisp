(defun join (l1 l2)
	(if (null l1)
			l2
		(cons (first l1)
					(join (rest l1) l2))))
