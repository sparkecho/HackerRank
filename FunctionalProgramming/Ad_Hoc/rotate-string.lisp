(defun rotate-str (str len)
  (dotimes (i len)
    (let ((temp (aref str 0)))
      (dotimes (j (- len 1))
        (setf (aref str j) (aref str (+ j 1))))
      (setf (aref str (- len 1)) temp))
    (format t "~A " str))
  (format t "~%"))

(dotimes (i (read))
  (let ((str (read-line)))
    (rotate-str str (length str))))