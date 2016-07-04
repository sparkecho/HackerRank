(defun smallest-multiple (n)
  (let ((acc 1))
	(do ((i 2 (1+ i)))
		((> i n) acc)
	  (setf acc (lcm acc i)))))

(dotimes (i (read))
  (format t "~D~%" (smallest-multiple (read))))
