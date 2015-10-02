(defun print-list-as-grid (list rows cols)
  (assert (= (length list) (* rows cols))
  (loop for row from 0 below rows do
     (loop for col from 0 below cols do
        (princ (car list))
        (princ #\space)
        (setf list (cdr list)))
     (princ #\newline)))
