
(defun calc-area (points)
  (format t "~f" (abs (area-of-polygon points (car points)))))

;; 利用向量积计算多边形的面积
;; S = (x1y2 - x2y1)/2 + (x2y3 - x3y2)/2 + ... + (xny1 - x1yn)/2

(defun area-of-polygon (points p1)
  (cond ((null points) 0)
		((null (cdr points))
		 (+ (one-item (car points) p1)
			(area-of-polygon (cdr points) p1)))
		(t (+ (one-item (car points) (cadr points))
			  (area-of-polygon (cdr points) p1)))))

(defun one-item (pm pn)
  (/ (- (* (car pm) (cdr pn))
		(* (car pn) (cdr pm)))
	 2))



(let ((points nil))
  (dotimes (i (read))
	(push (cons (read) (read)) points))
  (calc-area points))
