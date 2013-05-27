; Function composition, e.g. f(g(x)):
(define (compose f g)
  (lambda (x) (f (g x))))

(define (inc x) (+ x 1))

(define (square x) (* x x))


;Testing:
(display ((compose square inc) 6)) ; 49
(newline)
