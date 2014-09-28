(defclass circular ()
  ((items :initarg :items)))

(defmethod initialize-instance :after ((c circular) &rest initargs)
  (setf (slot-value c 'items) (circular (slot-value c 'items))))

(defmethod next-item ((c circular))
  (prog1 (first (slot-value c 'items))
    (setf (slot-value c 'items)
          (rest (slot-value c 'items)))))
