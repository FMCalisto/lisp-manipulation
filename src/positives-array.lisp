;;;; Positive Numbers of Array ;;;;


(defun positives-array (matrix &aux res)
        (dotimes (lin (array-dimension matrix 0))
                (dotimes (col (array-dimension matrix 1))
                        (when (> (aref matrix lin col) 3)
                                (setf res (cons (aref matrix lin col) res)))))
        res)