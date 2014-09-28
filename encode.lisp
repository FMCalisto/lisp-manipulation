(in-package #:jsun)

(defgeneric encode (source))

;;; complex

(defun encode-pair (key value)
  (join "'" (string-downcase (symbol-name key)) "':" (encode value)))

(defun encode-hash (hash)
  (join "{" (apply #'join-by "," (loop for pair in (group hash 2) collect (apply #'encode-pair pair))) "}"))

(defun encode-array (array)
  (join "[" (apply #'join-by "," (loop for element in array collect (encode element))) "]"))

(defun hash-like? (source)
  (and (evenp (length source))
       (every #'keywordp (mapcar #'first (group source 2)))))

;;; simple

(defmethod encode
    (source)
  (format nil "\"[ JSUN failed encoding ~a ]\""
          (type-of (car source))))

(defmethod encode
    ((source symbol))
  (encode (string-downcase (symbol-name source))))

(defmethod encode
    ((source number))
  source)

(let* ((slash "\\")
       (quote "\"")
       (nl (join #\nl))
       (slash-n (join slash "n"))
       (slash-t (join slash "t"))
       (dictionary `((,slash-n ,(join slash slash-n))
                     (,slash-t ,(join slash slash-t))
                     (,nl      ,slash-n)
                     (,quote   ,(join slash quote)))))
  (flet ((replace-all (string part replacement)
           (regex-replace-all (create-scanner part) string replacement)))

    (defmethod encode
        ((source string))
      (iter (for (from to) in dictionary)
            (setf source (replace-all source from to)))
      source))

  (defmethod encode :around
      ((source string))
    (join quote (call-next-method) quote)))

(defmethod encode
    ((source list))
  (if (hash-like? source)
      (encode-hash source)
      (encode-array source)))

(defmethod encode
    ((source condition))
  (encode (format nil "~a" source)))

(defmethod encode
    ((source (eql :json-empty-list)))
  (encode-hash nil))
