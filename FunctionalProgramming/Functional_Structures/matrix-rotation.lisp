
(defun make-matrix (row col)
  (let ((mx (make-array '(300 300) :element-type 'number)))
	(dotimes (i row)
	  (dotimes (j col)
		(setf (aref mx i j) (read))))
	mx))

(defun matrix-print (mx row col)
  (dotimes (i row)
	(dotimes (j col)
	  (format t "~D " (aref mx i j)))
	(format t "~%")))

(defun matrix-rotate (mx row col k)
  (let ((a11 (aref mx k k))
		(eoc (- col 1 k))
		(eor (- row 1 k)))

	(do ((i k)  (j k))
		((and (= i eor) (= j eoc)) 'done)
	  (if (not (= j eoc))
		  (setf (aref mx i j) (aref mx i (incf j)))
		  (setf (aref mx i j) (aref mx (incf i) j))))
	
	(do ((i eor)  (j eoc))
		((and (= i k) (= j k)) 'done)
	  (if (not (= j k))
		  (setf (aref mx i j) (aref mx i (decf j)))
		  (setf (aref mx i j) (aref mx (decf i) j))))
	
	(setf (aref mx (1+ k) k) a11)))


(defun run ()
  (let ((row (read))
		(col (read))
		(circ (read)))
	(let ((mx (make-matrix row col))
		  (cycle (/ (min row col) 2)))
	  (dotimes (k cycle)
		(let* ((m (- col k k))
			   ( n (- row k k))
			   (r (- (* (+ m n) 2) 4))
			   (c (mod circ r)))
		  (dotimes (i c)
			(matrix-rotate mx row col k))))
	  (matrix-print mx row col))))


(run)
