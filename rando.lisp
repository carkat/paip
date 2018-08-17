(defparameter *something* 5)
(defun rando-seomthing nil)

(defun mappend (fn lst)
  (apply #'append
	 (mapcar fn lst)))
;;; the code in this file is random playing with subjects
;;; found in the paip book
(print
 (apply #'append
	(mapcar
	 (lambda (x)
	   (list x (- x))) '(1 2 3))))

(print (apply #'append (mappend (lambda (l)
		  (list l (reverse l)))
		'((1 2 3) (a b c)))))



(defun pwr (n pow)
  (let ((result 1))
    (dotimes (p pow)
      (setf result (* result n)))
    result))
  
(defun pwr1 (n pow &optional (result 1))
  (if (> pow 0)
      (pwr n (decf pow) (* result n))
       result))

(defun pwr2 (n pow)
  (reduce #'* (make-list pow :initial-element n)))

(defun pwr3 (n pow)
  (reduce #'* (make-array pow :initial-element n)))

(defun pwr4 (n pow)
  (last (loop
     with result = 1
     for p below pow
     do (setf result (* result n))
     collect result)))


 

