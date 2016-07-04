(defun sum-of-squares (n)
  (/ (* n 
		(1+ n)
		(1+ (* 2 n)))
	 6))

(defun square-of-sum (n)
  (expt (/ (* (1+ n) n)
		   2)
		2))

(defun sum-square-diff (n)
  (- (square-of-sum n)
	 (sum-of-squares n)))

(dotimes (i (read))
  (format t "~D~%" (sum-square-diff (read))))
