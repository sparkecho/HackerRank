(defun dsp (vec n k)				  ;n for the length of array `vec'
  (let ((acc 0))
	(dotimes (i (1- n) acc)
	  (do ((j (+ i 1) (+ j 1)))
		  ((>= j n))
		(when (zerop (rem (+ (aref vec i) (aref vec j)) k))
		  (incf acc))))))

(let ((n (read))
	  (k (read))
	  (vec (make-array 101 :element-type 'fixnum)))
  (dotimes (i n)
	(setf (aref vec i) (read)))
  (format t "~A" (dsp vec n k)))
