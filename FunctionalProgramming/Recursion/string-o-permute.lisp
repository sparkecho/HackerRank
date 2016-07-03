;; this question didn't use recursion, for efficiency
;; havn't found an efficient recursion method.

(defun permute (str len)
  (if (eql len 0)
      nil
      (let ((i (- len 1)) (j (- len 2)) (temp (aref str (- len 1))))
        (setf (aref str i) (aref str j))
        (setf (aref str j) temp)
        (permute str (- len 2)))))

(defun perform (n)
  (dotimes (i n)
    (let ((str (read-line)))
      (let ((len (length str)))
        (permute str len))
      (format t "~A~%" str))))

(perform (read))
