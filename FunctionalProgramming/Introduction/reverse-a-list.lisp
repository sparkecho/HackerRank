
(defun fn (lst)
  (let ((result nil))
	(dolist (x lst result)
	  (push x result))))

(defun read-list ()
  (let ((n (read *standard-input* nil)))
    (if (null n)
        nil
        (cons n (read-list)))))

(format t "~{~d~%~}" (fn (read-list)))
