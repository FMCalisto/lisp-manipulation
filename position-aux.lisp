(defun posicao-aux (obj pos l)
  (if (null l)
      -1
    (if (equal obj (first l))
        pos
      (posicao-aux obj (1+ pos) (rest l)))))
