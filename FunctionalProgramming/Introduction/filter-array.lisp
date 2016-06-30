(defun fliter (n lst)
  (let ((result nil))
    (dolist (x lst (nreverse result))
      (if (< x n)
          (push x result)))))

(defun read-list ()
  (let ((n (read *standard-input* nil)))
    (if (null n)
        nil
        (cons n (read-list)))))

(format t "~{~A~%~}" (fliter (read) (read-list)))
