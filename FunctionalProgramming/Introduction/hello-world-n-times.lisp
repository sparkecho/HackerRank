#| 
;; v1
(defun fn (n)
  (if (= n 0)
      nil
      (progn
        (format t "Hello World~%")
		(fn (- n 1)))))
(fn (read))
|#

(defun hellon (n)
  (cond ((< n 1) 'done)
		(t (format t "Hello World~%")
		   (hellon (- n 1)))))


(hellon (read))
