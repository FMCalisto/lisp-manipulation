(defun out-of-order-aux (list index)
  (cond ((or #<list is empty> #<list only has one item>)
         nil)
        ((> #<the first item> #<the second item>)
         index)
        (t
         (out-of-order-aux #<advance the recursion> #<increment the index>))))

(defun out-of-order (list)
  (out-of-order-aux list 0))
