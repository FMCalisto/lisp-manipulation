(defun remove-from-tree-linear (tree &rest positions)
  (loop with node = tree
     with nilcar = (gensym)
     with positions = (sort (remove-duplicates positions) #'<)
     with counter = 0
     with copy = nil
     with root = nil
     with stack = nil
     with backrefs = nil
     while (or node stack) do
       (cond
         ((null node)
          (setf backrefs (cdr backrefs))
          (when (car stack)
            (setf copy (car backrefs)))
          (setf node (car stack) stack (cdr stack)))
         ((consp (car node))
          (if copy
              (if (eq (car copy) nilcar)
                  (setf (car copy) (list nilcar)
                        copy (car copy)
                        (car backrefs) copy)
                  (setf (cdr copy) (list nilcar)
                        copy (cdr copy)
                        (car backrefs) copy))
              (setf copy (list nilcar)
                    root copy))
          (setf backrefs (cons copy backrefs))
          (setf stack (cons (cdr node) stack)
                node (car node)))
         (t (if (and positions (= counter (car positions)))
                (setf positions (cdr positions))
                (if copy
                    (progn
                      (if (eq (car copy) nilcar)
                          (setf (car copy) (list (car node))
                                copy (car copy))
                          (setf (cdr copy) (list (car node))
                                copy (cdr copy)))
                      (setf (car backrefs) copy))
                    (setf copy (list (car node))
                          root copy
                          backrefs (list copy))))
            (setf node (cdr node))))
       (incf counter)
     finally (return root)))
