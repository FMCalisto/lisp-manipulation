(defun meu-cons (car cdr)
  #'(lambda (mensagem)
      (case mensagem
            (:car car)
            ((:cdr) cdr) ;podia ser :cdr em vez de (:cdr)
            (otherwise (error "Mensagem desconhecida: ~a" mensagem)))))
