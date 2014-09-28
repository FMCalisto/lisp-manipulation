(load "mycons.lisp")

(defun my-car (my-cons)
  (funcall my-cons :car))
