(load	"union.lisp")

(defun	union-reverses	(l)
	(if	(null	l)
		()
	(union	(union-reverses	(rest	l))
		(list	(first	l)))))
