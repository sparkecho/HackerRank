(defun super-digit (n)
  (cond ((< n 10) n)
		(t (super-digit (digit-sum n (number-of-digit n))))))

;; i: number of digit
(defun digit-sum (num i)
  (labels ((auxilary (acc num i)
			 (if (< i 1)
				 acc
				 (auxilary (+ acc (rem num 10))
						   (truncate num 10)
						   (- i 1)))))
	(auxilary 0 num i)))

(defun number-of-digit (num)
  (labels ((auxilary (acc num)
			 (if (< num 10)
				 acc
				 (auxilary (1+ acc) (truncate num 10)))))
	(auxilary 1 num)))

(defun build-number (n k)
  (labels ((build-rec (acc n scale k)
			 (cond ((= k 1) acc)
				   (t (build-rec (+ (* acc scale) n) n scale (- k 1))))))
	(build-rec n n (expt 10 (number-of-digit n)) k)))

(defun run (n k) (format t "~A" (super-digit (build-number n k))))
