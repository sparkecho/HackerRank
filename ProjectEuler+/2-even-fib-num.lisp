;; Even Fibonacci numbers

(defun fib (n)
  (fib-iter 1 0 n))

(defun fib-iter (a b n)
  (cond ((= n 0) b)
		(t (fib-iter (+ a b)
					 a
					 (- n 1)))))

(defun even-fib (n)
  (let ((acc 0))
	(do ((i 1 (+ i 1))
		 (e (fib 1) (fib i)))
		((>= e n) acc)
	  (if (evenp e)
		  (incf acc e)))))

(dotimes (i (read))
  (format t "~D~%" (even-fib (read))))
