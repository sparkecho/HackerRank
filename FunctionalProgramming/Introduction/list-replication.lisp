(defun ntime (n x)
  (if (= n 0)
      nil
      (progn (format t "~A~%" x)
             (ntime (- n 1) x))))

(defun f (n list) 
  (dolist (x list)
	(ntime n x)))

(defun read-list ()
  (let ((n (read *standard-input* nil)))
	(if (null n)
		nil
		(cons n (read-list)))))

(format t "~{~d~%~}" (f (read) (read-list)))
