(defun count-things-in (needle haystack)
  "Count the number of NEEDLEs in HAYSTACK."
  (reduce '+
          (map 'list
               #'(lambda (straw)
                   (if (equalp straw needle) 1 0))
               haystack)))
