(defun compress (str)
  (str-compress str 1 0 (- (length str) 1)))


(defun str-compress (str cnt index end)
  (if (eql index end)
      (if (eql cnt 1)
		  (format t "~A" (aref str end))
		  (format t "~A~A" (aref str end) cnt))
      (let ((curen (aref str index))
			(next (aref str (1+ index))))
		(cond ((eql curen next)
			   (str-compress str (1+ cnt) (1+ index) end))
			  ((eql cnt 1)
			   (format t "~A" curen)
			   (str-compress str 1 (1+ index) end))
			  (t (format t "~A~A" curen cnt)
				 (str-compress str 1 (1+ index) end))))))

(compress (read-line))
