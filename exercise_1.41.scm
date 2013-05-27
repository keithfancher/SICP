; A function that takes a function and returns a function (I know) that applies
; the passed function twice. (I know! Sorry. Lisp, man. Lisp.)
(define (double proc)
  (lambda (x) (proc (proc x))))

(define (inc x) (+ x 1))

(define (square x) (* x x))


; Testing:
(display ((double inc) 1)) ; should be 3
(newline)
(display ((double square) 2)) ; should be 16
(newline)
(display (((double (double double)) inc) 5)) ; boil, trouble, etc. (21)
(newline)
