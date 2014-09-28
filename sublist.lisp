(defun sublist (l)
	(if (null l)
		()
	(cons l
				(sublist (rest l)))))
