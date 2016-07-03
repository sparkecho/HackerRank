(defun friendship (str1 str2)
  (let ((len (length str1)) (charlst nil))
    (dotimes (i len)
      (push (list (aref str1 i) (aref str2 i)) charlst))
    (apply #'concatenate
		   'string
		   (mapcar #'(lambda (lst) (concatenate 'string lst))
				   (nreverse charlst)))))

(format t "~A~%" (friendship (read-line) (read-line)))
