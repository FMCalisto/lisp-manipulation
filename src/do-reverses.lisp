(defun do-reverses (list)
  (do ((iter list (rest iter)) ;var iter
       (res '())) ;var res
     ((null iter) res) ;test cicle end
    (setf res (cons (first iter) res))))
