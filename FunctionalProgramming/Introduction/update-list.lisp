
(defun update-list (lst)
  (mapcar #'abs lst))

(defun read-list ()
  (let ((n (read *standard-input* nil)))
    (if (null n)
        nil
        (cons n (read-list)))))

(format t "~{~A~%~}" (update-list (read-list)))
