(defun fibonacci (n)
  (do ((i 0 (+ i 1))
       (prev 0 next)
       (next 1 (+ prev next)))
      ((= i n) prev)))

(dotimes (i (read))
  (format t "~A~%" (rem (fibonacci (read)) (+ (expt 10 8) 7))))
