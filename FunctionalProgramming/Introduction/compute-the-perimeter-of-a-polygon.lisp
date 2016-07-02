(defun calc-perimeter (points)
  (format t "~f" (perimeter points (car points))))

(defun perimeter (points p1)
  (cond ((null points) 0)
		((null (cdr points))
		 (+ (distance (car points) p1) (perimeter (cdr points) p1)))
		(t (+ (distance (car points)
						(car (cdr points)))
			  (perimeter (cdr points) p1)))))

(defun distance (p1 p2)
  (sqrt (+ (square (- (car p1) (car p2)))
		   (square (- (cdr p1) (cdr p2))))))

(defun square (n)
  (expt n 2))

(let ((points nil))
  (dotimes (i (read))
	(push (cons (read) (read)) points))
  (calc-perimeter points))
