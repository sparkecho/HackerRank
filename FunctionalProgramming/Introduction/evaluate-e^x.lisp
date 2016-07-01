
(defun factorial (n)
  (if (zerop n)
      1
      (* n (factorial (- n 1)))))

(defun xpower-e (x times)
  (if (zerop times)
      1
      (+ (/ (expt x times) (factorial times)) (xpower-e x (- times 1)))))

(dotimes (i (read))
  (format t "~,4f~%" (xpower-e (read) 9)))
