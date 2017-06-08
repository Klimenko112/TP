;; SLIME 2017-04-05
CL-USER> (defun sum (term a b)
	   (if (> a b)                                 
	       0                                           
	       (+ (funcall term a)
		  (sum term (+ a 1) b))))
SUM
CL-USER> (defun cub (a)
	   (* a a a))
CUB
CL-USER> (defun sum-cub (a b)
	   (sum #'cub a b))
SUM-CUB
CL-USER> (sum-cub 5 6)
341
CL-USER> (defun kvadrat (a b)
	   (sum (lambda (a)
		  (* a a)) a b))
KVADRAT
CL-USER> (kvadarat 8 9)
(kvadrat 8 9)
145
CL-USER>
