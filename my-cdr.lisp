(load "my-cons.lisp")

(defun my-cdr (my-cons)
  (funcall my-cons :cdr))
