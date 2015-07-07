;;;; Sums tow Arrays and returns the sum of the both ;;;;

(defun sum-a2 (array1 array2)
  (if (equal NIL array1)
    NIL
    (cons
      (mapcar #' + (first array1) (first array2))
      (sum-a2 (rest array1) (rest array2))
    )
  )
)
