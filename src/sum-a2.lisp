;;;; Sums tow Arrays and returns the sum of the both ;;;;

(defun sum-a2 (array1 array2)
  (if (or (null array1 (null array2))
    NIL
    (cons
      (+ (first array1) (first array2))
      (sum-a2 (rest array1) (rest array2))
    )
  )
)
