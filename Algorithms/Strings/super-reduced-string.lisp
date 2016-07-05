(defun string-reduce (str)
  (multiple-value-bind (status newstr)
	  (reduce-one-step str)
	(if status
		(string-reduce newstr)
		(if (string= newstr "")
			(format t "Empty String")
			(format t "~A" newstr)))))

(defun reduce-one-step (str)
  (let ((end (1- (length str))))
	(dotimes (i end (values nil str))
	  (when (char= (char str i) (char str (1+ i)))
		(return (values t (concatenate 'simple-string
									   (subseq str 0 i)
									   (subseq str (+ i 2)))))))))

(string-reduce (read-line))
