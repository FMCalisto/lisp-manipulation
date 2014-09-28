(defun remo (l)
  (do ((power-of-2 1)
       (counter 1 (1+ counter))
       (result ())
       (sublist l (cdr sublist)))
      ((null sublist) (nreverse result))
    (if (= counter power-of-2)
        (setq power-of-2 (* 2 power-of-2))
      (push (car sublist) result))))
