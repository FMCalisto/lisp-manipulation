(defun power-of-2-p (number)
  "Determines whether number, which is assumed to be a nonnegative
integer, is a power of 2 by counting the bits."
  (declare (type (integer 0 *) number))
  (= 1 (logcount number)))
