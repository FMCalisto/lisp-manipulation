(defun out-of-order (list)
  (labels ((recur (list index)
             (cond ((or #<list is empty> #<list only has one item>)
                    nil)
                   ((> #<the first item> #<the second item>)
                    index)
                   (t
                    (recur #<advance the recursion> #<increment the index>)))))
    (recur list 0)))
