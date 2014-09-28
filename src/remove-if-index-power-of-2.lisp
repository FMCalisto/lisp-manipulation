(defun remove-if-index-power-of-2 (list)
  (loop :for element :in list
        :for index :upfrom 1        ; correct for language: "1st" is index 0
        :unless (power-of-2-p index)
        :collect element))
