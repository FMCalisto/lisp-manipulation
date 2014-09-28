(defun find1 (alist &optional (accum 0))
  (let ((part (member '1 alist)))
    (if part
     (find1 (rest part) (+ accum 1))
     accum)))
