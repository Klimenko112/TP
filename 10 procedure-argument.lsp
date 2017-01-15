(define (inc n) (+ n 1))
(define (sum-cubes a b)
(sum cube a inc b)) //процедура сумма кубов

(sum-cubes 1 10) //вычисление суммы кубов
3025 