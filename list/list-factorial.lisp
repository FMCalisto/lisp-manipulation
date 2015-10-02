(defun (factorial x)
  "calculate factorial the *boring* way"
  (let ((accum 1))
       (loop for current-factor in 1 to x
             (setf accum (* current-factor accum)))
       (return accum)))
