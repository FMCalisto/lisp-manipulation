;;;; Minimum of a list using Recursion ;;;;

(defun minimum (lst)
  (if (null (cdr lst))
      (car lst)
    (let ((tail-min (minimum (cdr lst))))
      (if (<= (car lst) tail-min)
          (car lst)
          tail-min))))
