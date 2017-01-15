(define (search f neg-pointpos-point) 
(let ((midpoint (average neg-point pos-point))) 
(if (close-enough? neg-point pos-point) 
midpoint
(let ((test-value (f midpoint))) 
(cond ((positive? test-value) 
(search f neg-point midpoint)) 
((negative? test-value) 
(search f midpoint pos-point)) 
(elsemidpoint))))))//

(define (fixed-point f first-guess) 
(define (close-enough? v1 v2) 
(< (abs (- v1 v2)) tolerance)) 
(define (try guess)
(let ((next (f guess))) 
(if (close-enough? guess next) 
next
(try next)))) 
(try first-guess))
