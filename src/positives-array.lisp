;;;; Positive Numbers of Array ;;;;

; Note: this is not well.

(load "join.lisp")

(defun positives-array (l1 l2)
	#'(lambda (nl)
			(if ((first l1) >= 0)
					(join nl (first l1))
				(if ((first l2) >= 0)
						(join nl (first l2))
					(positives-array (rest l1) (rest 2))))))
