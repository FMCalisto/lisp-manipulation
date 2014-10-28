;;;; Positive Numbers of Array ;;;;


(defun positives-array (array)
  (let ((lst NIL)
    (lines (array-dimension array 0))
      (columns (array-dimension array 1)))
  (dotimes (i lines lst)
    (dotimes (j columns lst)
      (if (>= (aref array i j) 0)
	  (setf lst (append lst (list (aref array i j)))))))))
	  
	  
; Acknowledgement:
;
; Ana Beatriz Alves
; Francisco Gonçalves
