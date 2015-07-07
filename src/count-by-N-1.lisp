;;;; Finding the difference in an arithmetic progression ;;;;
[@StackOverflow](http://stackoverflow.com/questions/31221824/finding-the-difference-in-an-arithmetic-progression-in-lisp/31275954#31275954)

(defun count-by-N-1 (lst)
  (if (equal NIL lst)
    lst
    (- (cadr lst) (car lst))
  )
  (count-by-N (cdr lst))
)
