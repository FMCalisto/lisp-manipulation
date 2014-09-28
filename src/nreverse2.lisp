(defun nreverse2 (list)
  (recurse reving ((list list) (rslt '()))
    (if (not (consp list))
        rslt
        (let ((rest (cdr list)))
          (setf (cdr list) rslt)
          (reving rest list)))))

(defmacro recurse (name args &rest body)
  `(labels ((,name ,(mapcar #'car args) ,@body))
     (,name ,@(mapcar #'cadr args))))
