(defun num-of-divisors (n)
  (let ((num 0))
    (do ((cnt 1 (+ cnt 1)))
        ((> cnt n) nil)
      (when (zerop (rem n cnt))
        (incf num)))
	num))

(defun common-divisors (arg1 arg2)
  (num-of-divisors (gcd arg1 arg2)))

(dotimes (i (read))
  (format t "~S~%" (common-divisors (read) (read))))
