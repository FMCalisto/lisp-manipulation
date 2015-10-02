(defun find-downstep-index (list)
  (if (endp (rest list))
      (length list)
      (loop :for current-element :in list
            :for next-element :in (rest list)
            :for current-index :upfrom 0
            :when (> current-element next-element)
            :do (return-from find-downstep-index current-index)
            :finally (return (+ current-index 2)))))
