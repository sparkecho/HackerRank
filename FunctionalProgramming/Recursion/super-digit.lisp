(defun super-digit (n)
  (cond ((< n 10) n)
		(t (super-digit (multiple-value-call
							#'(lambda (sdigit adigit)
								(+ (funcall #'super-digit sdigit) adigit))
						  (truncate n 10))))))

(defun number-of-digit (num)
  (if (< num 10)
	  1
	  (1+ (number-of-digit (truncate num 10)))))

(defun build-number (n k)
  (labels ((build-rec (acc n scale k)
			 (cond ((= k 1) acc)
				   (t (build-rec (+ (* acc scale) n) n scale (- k 1))))))
	(build-rec n n (expt 10 (number-of-digit n)) k)))

(format t "~A" (super-digit (build-number (read) (read))))
