;;;; Prefix compression

;;;;                    Example:                        ::::
;;;;====================================================::::
;;;;   Input:  abcdefpr        kitkat          puppy    ::::
;;;;           abcpqr          kit             puppy    ::::
;;;;----------------------------------------------------::::
;;;;   Output: 3 abc           3 kit           5 puppy  ::::
;;;;           5 defpr         3 kat           0        ::::
;;;;           3 pqr           0               0        ::::
;;;;====================================================::::

(defun prefix-compress (str1 str2)
  (let* ((len1 (length str1))
		 (len2 (length str2))
		 (end (min len1 len2)))
    (prefix str1 str2 0 len1 len2 0 end)))

(defun prin-common (str index)
  (if (zerop index)
      (format t "~&0")
      (format t "~&~S ~A" index (subseq str 0 index))))

(defun prin-part (str index len)
  (let ((surplus-len (- len index)))
    (if (zerop surplus-len)
		(format t "~&0")
		(format t "~&~S ~A" surplus-len (subseq str index)))))

(defun display (str1 str2 index len1 len2)
  (prin-common str1 index)
  (prin-part str1 index len1)
  (prin-part str2 index len2))

(defun prefix (str1 str2 common len1 len2 index end)
  (if (eql index end)
      (display str1 str2 index len1 len2)
      (let ((char1 (aref str1 index))
			(char2 (aref str2 index)))
		(cond ((not (char= char1 char2)) (display str1 str2 index len1 len2))
			  (t (prefix str1 str2 (1+ common) len1 len2 (1+ index) end))))))

(prefix-compress (read-line) (read-line))
