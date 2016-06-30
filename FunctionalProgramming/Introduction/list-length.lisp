
(defun my-length (lst)
  (if (null lst)
	  0
	  (+ (my-length (cdr lst)) 1)))

(defun read-list ()
  (let ((n (read *standard-input* nil)))
    (if (null n)
        nil
        (cons n (read-list)))))

(format t "~A~%" (my-length (read-list)))
