(defun lists-and-gcd (lst)
  (cond
	;; when the length of lst is 2
	((null (cddr lst)) (list-gcd (first lst) (second lst)))
	(t (list-gcd (car lst) (lists-and-gcd (cdr lst))))))

;; lst: 
(defun list-gcd (lst1 lst2)
  (cond
	((or (null lst1) (null lst2)) nil)
	((= (first lst1) (first lst2))
	 (cons (first lst1)							   ;the base
		   (cons (min (second lst1) (second lst2)) ;the exponent
				 (list-gcd (cddr lst1) (cddr lst2)))))
	((> (first lst1) (first lst2))
	 (list-gcd lst1 (cddr lst2)))
	(t (list-gcd (cddr lst1) lst2))))


(defun read-data (n)
  (cond ((zerop n) nil)
		(t (cons (mapcar #'parse-integer
						 (split (read-line) #\space))
				 (read-data (- n 1))))))

(defun split (sequence item)
  (split-rec sequence item nil))

(defun split-rec (sequence item list)
  (let ((pos (position item sequence)))
	(if (not pos)
		(nreverse (if (zerop (length sequence))
					  list
					  (cons sequence list)))
		(split-rec (subseq sequence (1+ pos))
				   item
				   (cons (subseq sequence 0 pos) list)))))

(format t "~{~A ~}"(lists-and-gcd (read-data (read))))
