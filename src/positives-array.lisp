;;;; Positive Numbers of Array ;;;;

; Note: this is not well.

(load "join.lisp")
(load "any-find-if.lisp")

(defun positives-array (l1 l2)
   (if (any-find-if (< p 0) (first l1))
          (join (rest l1) l2))
      (if (any-find-if (< p 0) (first l2))
        		(join l1 (rest l2)))
        (T NIL)))
