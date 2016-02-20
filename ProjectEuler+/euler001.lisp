;; PASS: #0 #1 #4 #5
;; FAIL: #2 #3
;; Score: 60(100)

(defun sum (a n)
  (/ (* (+ n 1) n a) 2))

(defun multiples3n5 (n)
  (let ((acc 0)
		(n3 (floor (/ (- n 0.1) 3)))
		(n5 (floor (/ (- n 0.1) 5)))
		(n15 (floor (/ (- n 0.1) 15))))
	(incf acc (sum 3 n3))
	(incf acc (sum 5 n5))
	(decf acc (sum 15 n15))
	acc))

(dotimes (i (read))
  (format t "~D~%" (multiples3n5 (read))))
