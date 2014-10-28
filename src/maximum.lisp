;;;; Maximum of a list using Recursion ;;;;

(defun maximum (lst)
  (if (null (cdr lst))
      (car lst)
    (let ((tail-max (maximum (cdr lst))))
      (if (>= (car lst) tail-max)
          (car lst)
          tail-max))))
