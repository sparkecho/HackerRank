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
  (defmacro maketable ()
	`(let* ((ht (make-hash-table))
			(cnt 1)
			(len 106000)
			(table (make-array len :element-type 'number :initial-element 0)))
	   (setf (aref table 2) 1)
	   (do ((i 3 (+ i 2)))
		   ((> i (1- len)))
		 (if (primep i)
			 (setf (aref table i) 1)))
	   (dotimes (i len)
		 (when (= (aref table i) 1)
		   (setf (gethash cnt ht) i)
		   (incf cnt)))
	   ht)))


(let ((ht  (load-time-value (maketable))))
  (defun get-value (n)
	(gethash n ht)))



(dotimes (i (read))
  (format t "~D~%" (get-value (read))))
