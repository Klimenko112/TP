(define (newton-transform g)
(lambda (x)
(- x (/ (g x) ((deriv g) x)))))//f(x)=x-(g(x)/Dg(x))


(define (newtons-method g guess)
(fixed-point (newton-transform g) guess))//вычисление метода ньютона