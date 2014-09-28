(defun bprint (object)
  (typecase object
    (cons
     (write-char #\[)
     (do ((list object (rest list)))
         ((endp list) (write-char #\]))
       (bprint (first list))
       (when (rest list)
         (write-char #\Space))))
    (t
     (prin1 object)))
  t)
