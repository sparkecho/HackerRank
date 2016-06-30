(defun position-fliter (lst)
  (let ((len (length lst))(result nil))
    (dotimes (i len)
      (if (oddp i)
          (push (nth i lst) result)))
    (nreverse result)))


(defun read-list ()
  (let ((n (read *standard-input* nil)))
    (if (null n)
        nil
        (cons n (read-list)))))

(format t "~{~A~%~}" (position-fliter (read-list)))
