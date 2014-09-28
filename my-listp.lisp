(load "my-cdr")

(defun my-listp (obj)
  (if (atom obj)
      (null obj)
    (my-listp (my-cdr obj))))
