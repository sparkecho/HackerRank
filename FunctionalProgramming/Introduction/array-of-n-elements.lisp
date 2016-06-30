(defun f (n)
  (let ((lst nil)) 
    (dotimes (x n lst)
      (push x lst))))

(let ((x (coerce (read) 'integer)))
  (format t "~S" (length (f x))))
