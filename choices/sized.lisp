;; Helper function

(defun join-string (sep lst)
  (if (cdr lst)
    (concatenate 'string (car lst) (string sep) (join-string sep (cdr lst)))
    (car lst)))

(defun prod1 (elem vec)
  (mapcar #'(lambda (x) (join-string " " (list elem x))) vec))

(defun xprod (vec1 vec2)
  (reduce
    #'(lambda (a b) (concatenate 'list a b))
    (mapcar #'(lambda (elem) (prod1 elem vec2)) vec1)))

(defun choices (x)
  (join-string #\Newline (reduce #'xprod x)))

(princ (choices (list (list "small" "large")
            (list "c1" "c2" "c3")
            (list "c4" "c5" "c6" "c7" "c8")
            (list "c9" "c10"))))
