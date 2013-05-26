; If n < 3, return n. Otherwise return f(n-1) + 2f(n-2) + 3f(n-3). Ugh.
(define (dumb-func n)
  (if (< n 3)
    n
    (+ (dumb-func (- n 1))
       (* 2 (dumb-func (- n 2)))
       (* 3 (dumb-func (- n 3))))))


; Testing:
(display (dumb-func 1))
(newline)
(display (dumb-func 2))
(newline)
(display (dumb-func 3))
(newline)
(display (dumb-func 4))
(newline)
