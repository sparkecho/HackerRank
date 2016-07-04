;; this is a lazy way

(dotimes (i (read))
  (let ((str (format nil "~:(~R~)" (read))))
	(format t "~A~%" (substitute #\space #\- str))))
