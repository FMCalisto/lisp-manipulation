; This function counts a 3x3 array.
; '(3 3)
; for example: a3 = ((1 2 3)
;                    (4 5 6)
;                    (7 8 9))

(defun negative-count (a3)
  (let ((cont 0))
    (dotimes (i (array-dimension a3 0)
      (dotimes (j (array-dimension a3 1)
        (dotimes (k (array-dimension a3 2)
          (if (< (aref a3 i j k) 0)
            (incf cont))))))))))
