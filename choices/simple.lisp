(defun choices (menu &optional (sofar '()))
  (if menu 
    (dolist (i (car menu)) 
      (choices (cdr menu) (append sofar (list i))))
    (format t "~{~a~^ ~}~%" sofar)))

(choices (list
           (list "c1" "c2" "c3")
           (list "c4" "c5" "c6" "c7" "c8")
           (list "c9" "c10")))
