(dolist (x *old-list*)
  (when (my-test-p x)
    (push x *new-list*)))
(setq *new-list* (nreverse *new-list*))
