(defun factorial (n)
  (cond ((= n 0) 1)
        ((= n 1) 1)
        (t (* n (factorial (- n 1))))))

(defun pascal-elt (n r)
  (/ (factorial n)
     (* (factorial r)
        (factorial (- n r)))))

(defun pascal (k)
  (dotimes (n k)
    (dotimes (r (1+ n))
      (format t "~A " (pascal-elt n r)))
    (format t "~%")))

(pascal (read))
