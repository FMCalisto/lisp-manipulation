(defun struct-equal (obj1 obj2)
	(cond ((atom obj1) (eq obj1 obj2))
		((consp obj1)
			(and (consp obj2)
				(or (eql (car obj1) (car obj2))
					(meu-equal (car obj1) (car obj2)))
				(or (eql (cdr obj1) (cdr obj2))
					(meu-equal (cdr obj1) (cdr obj2)))))