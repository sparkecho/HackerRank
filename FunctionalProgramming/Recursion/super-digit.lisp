(defun super-digit (n)
  (cond ((< n 10) n)
		(t (super-digit (digit-sum n)))))


(defun digit-sum (num)
  (labels ((auxilary (acc num)
			 (if (zerop num)
				 acc
				 (auxilary (+ acc (rem num 10))
						   (truncate num 10)))))
	(auxilary 0 num)))

(defun build-number (n k)
  (* k (digit-sum n)))

(defun run (n k) (format t "~A" (super-digit (build-number n k))))

(run (read) (read))
