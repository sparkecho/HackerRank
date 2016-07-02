(defun get-sublist (lst1 lst2)
  (let ((resl lst2))
    (dolist (e lst1)
      (setf resl (delete e resl :count 1)))
    (remove-duplicates resl)))

(defun get-arg ()
  (let ((arg nil))
    (dotimes (i (read))
      (push (read) arg))
	arg))

(defun sort-resl ()
  (sort (get-sublist (get-arg) (get-arg)) #'<))

(format t "~{~S ~}~%" (sort-resl))
