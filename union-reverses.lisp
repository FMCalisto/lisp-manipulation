(load	"union.lisp")

(defun	reverses	(l)
	(if	(null	l)
		()
	(union	(reverses	(rest	l))
		(list	(first	l)))))
