;; Enter your code here. Read input from STDIN. Print output to STDOUT
;; Project Euler #13: Large sum

(defun <<n (num n)
  (let ((val num))
	(dotimes (i n)
	  (setf val (floor (/ val 10))))
	val))

(defun sum (n)
  (labels ((sum-iter (n acc)
			 (if (= n 0)
				 acc
				 (let ((inc (<<n (read) 38)))
				   (sum-iter (1- n) (+ acc inc))))))
	(sum-iter n 0)))


(defun num-len (num)
  (if (= num 0)
	  0
	  (1+ (num-len (floor (/ num 10))))))

(defun run ()
  (let* ((rough (sum (read)))
		 (n (- (num-len rough) 10)))
	(format t "~D~%" (<<n rough n ))))

(run)
