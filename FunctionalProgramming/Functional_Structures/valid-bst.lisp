;; Binary Search Tree
(defstruct (node (:print-function
				  (lambda (n s d)
					(format s "#<~A>" (node-elt n)))))
  elt (l nil) (r nil))


(defun bst-insert1 (obj bst)
  (if (null bst)
	  (make-node :elt obj)
	  (let ((elt (node-elt bst)))
		(if (eql obj elt)
			bst
			(if (< obj elt)
				(make-node
				 :elt elt
				 :l (bst-insert1 obj (node-l bst))
				 :r (node-r bst))
				(make-node
				 :elt elt
				 :r (bst-insert1 obj (node-r bst))
				 :l (node-l bst)))))))


(defun pre-order-vec (bst vec)
  (if (null bst)
	  vec
	  (progn (vector-push (node-elt bst) vec)
			 (pre-order-vec (node-l bst) vec)
			 (pre-order-vec (node-r bst) vec)
			 vec)))


(defun valid-bstp (len)
  (let ((vec1 (make-array len :element-type 'fixnum))
		(vec2 (make-array len :element-type 'fixnum
						  :adjustable t
						  :fill-pointer 0))
		(bst nil))
	
	(dotimes (i len)
	  (setf (aref vec1 i) (read)))

	(dotimes (j len)
	  (setf bst (bst-insert1 (aref vec1 j) bst)))
	
	(equalp vec1 (pre-order-vec bst vec2))))

(dotimes (i (read))
  (if (valid-bstp (read))
	  (format t "YES~%")
	  (format t "NO~%")))
