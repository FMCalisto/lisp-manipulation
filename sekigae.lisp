(setf *random-state* (make-random-state t))
(setq freshers (list "s1" "s2" "s3" "s4"))

(defun join-string-list (lis sep)
 (reduce #'(lambda (a b) (concatenate 'string a sep b)) lis))

(princ
  (join-string-list
    (mapcar  
      #'(lambda (x) 
        (car (cdr x)))
      (sort (mapcar #'(lambda (x)
              (list (random 100) x)) freshers)
              #'(lambda (x y) (< (car x) (car y))))) " | "))
