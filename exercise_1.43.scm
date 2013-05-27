; Function composition, e.g. f(g(x)):
(define (compose f g)
  (lambda (x) (f (g x))))

(define (square x) (* x x))

; Apply function f n times. For example, if n=2, do f(f(x)).
(define (repeated f n)
  (if (= n 1)
    (lambda (x) (f x))
    (compose f (repeated f (- n 1)))))


;Testing:
(display ((repeated square 2) 5)) ; 625
(newline)
