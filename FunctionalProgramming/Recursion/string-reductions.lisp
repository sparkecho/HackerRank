;; this question is resoved by a shortcut with a common lisp built-in function
;; it should rewrite in the proper way(use recursion).
(defun str-reduction (str)
  (remove-duplicates str :from-end t))

(format t "~A~%" (str-reduction (read-line)))
