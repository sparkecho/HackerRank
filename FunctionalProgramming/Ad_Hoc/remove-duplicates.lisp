;; this is a lazy work, the function `remove-duplicates' should write by self.

(format t "~A~%" (remove-duplicates (read-line) :from-end t))
