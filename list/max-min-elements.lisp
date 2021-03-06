;;;; Minimum and Maximum Elements Value of Array ;;;;


(load "minimum.lisp")
(load "maximum.lisp")


(defun max-min-elements (array)
  (let ((lst NIL)
    (lines (array-dimension array 0))
      (columns (array-dimension array 1)))
        (dotimes (i lines lst)
          (dotimes (j columns lst)
            (if (< (aref array i j) (aref array (incf i) j))
              (if (> (aref array i j) (aref array i (incf j)))
	                (setf lst (append lst (list (aref array i j))))))))))
