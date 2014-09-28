(defun my-cons (car cdr)
  #'(lambda (message)
      (case message
            (:car car)
            ((:cdr) cdr) ;could be cdr instead of (cdr)
            (otherwise (error "Unknown message: ~a" mensagem)))))
