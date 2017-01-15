(define (factorial n)
	(if (= n 1)
		1
		(* n (factorial (- n 1)))))//линейная рекурсия						
		
		(define (build L)
(define (build-iter L result)
(if (null? L)
(reverse result)
(build-iter (cdr L) (cons (summ L 0) result)))
(build-iter L '())))//хвостовая рекурсия
