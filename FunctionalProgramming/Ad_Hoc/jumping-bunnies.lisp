;; this is a lazy work, `lcm' is provided by Common Lisp, it should be write by self.

(let ((nums nil))
  (dotimes (i (read))
	(push (read) nums))
  (format t "~a" (apply #'lcm nums)))
