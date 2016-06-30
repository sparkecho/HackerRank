
(defun my-gcd (x y)
  (if (= x y)
      x
      (if (> x y)
          (gcd (- x y) y)
          (gcd x (- y x)))))

(format t "~A~%" (my-gcd (read) (read)))
