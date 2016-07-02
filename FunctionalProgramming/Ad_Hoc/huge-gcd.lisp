(defun get-a-factor ()
  (let ((factor 1))
    (dotimes (i (read))
      (setf factor (* factor (read))))
    factor))

(defun huge-gcd ()
  (mod (gcd (get-a-factor) (get-a-factor)) 1000000007))

(format t "~S~%" (huge-gcd))
