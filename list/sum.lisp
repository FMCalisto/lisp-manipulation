(defun sum (&rest l)
	(labels ((interactive (res l)
		(if (null l)
			res
			(iteractive (+ (first l) res) (rest l)))))
			(iteractive 0 l)))
