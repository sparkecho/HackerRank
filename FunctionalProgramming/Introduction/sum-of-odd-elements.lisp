
(defun sum-odds (lst)
  (if (null lst)
      0
      (if (oddp (car lst))
          (+ (car lst) (sum-odds (cdr lst)))
          (sum-odds (cdr lst)))))

(defun read-list ()
  (let ((n (read *standard-input* nil)))
	(if (null n)
		nil
		(cons n (read-list)))))

(format t "~A~%" (sum-odds (read-list)))
