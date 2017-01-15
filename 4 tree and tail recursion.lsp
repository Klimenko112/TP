(define (factorial n)
	(if (= n 1)
		1
		(* n (factorial (- n 1)))))//линейная рекурсия
		
		(define (summ L result)
    (if (null? L)
        result
        (summ (cdr L)
              (+ result (car L))))))

(define (build L)
  (if (null? L)
      '()
      (cons (summ L 0)
            (build (cdr L)))))//хвостовая рекурсия
