(defun circular (&rest items)
  (rplacd (last items) items)
  items)
