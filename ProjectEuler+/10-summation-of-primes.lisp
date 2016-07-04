;; Project Euler #10: Summation of primes


;; Judge if a number N is a prime.
(defun primep (n)
  (cond ((< n 2) nil)
		((= n 2) t)
		(t (let ((end (floor (sqrt n))))
			 (do ((i 2 (1+ i)))
				 ((> i end) t)
			   (if (zerop (rem n i))
				   (return nil)))))))



(eval-when (:compile-toplevel)
  (defmacro make-table ()
	`(let* ((len 1000001)
			(arr (make-array len :element-type 'integer :initial-element 0))
			(sum (make-array len :element-type 'integer :initial-element 0)))
	   
	   (setf (aref arr 2) 2)
	   (do ((i 3 (+ i 2)))
		   ((= i len))
		 (when (primep i)
		   (setf (aref arr i) i)))
	   
	   (do ((i 1 (+ i 1)))
		   ((= i len))
		 (setf (aref sum i)
			   (+ (aref sum (1- i))
				  (aref arr i))))
	   sum)))

(let ((table (make-table)))
  (defun sum-of-primes (n)
	(aref table n)))



(dotimes (i (read))
  (format t "~D~%" (sum-of-primes (read))))
