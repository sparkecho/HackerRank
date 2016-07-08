(defun super-digit (n)
  (let ((sum (digit-sum n)))
	(if (zerop sum)
		9
		sum)))


(defun digit-sum (num)
  (labels ((auxilary (acc num)
			 (if (zerop num)
				 acc
				 (auxilary (+ acc (rem num 10))
						   (truncate num 10)))))
	(auxilary 0 num)))

(defun build-number (n k)
  (* (rem k 9) (digit-sum (rem n 9))))

(defun run (n k) (format t "~A" (super-digit (build-number n k))))

(run (read) (read))
