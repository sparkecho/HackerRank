
(defun solution (n)
  (let ((num (expt 2 n)) (resl nil))
	(do* ((remain (rem num 10) (rem factor 10))
		  (factor (/ (- num remain) 10) (/ (- factor remain) 10)))
		 ((zerop factor) (apply #'+ remain resl))
	  (push remain resl))))

(dotimes (i (read))
  (format t "~A~%" (solution (read))))
