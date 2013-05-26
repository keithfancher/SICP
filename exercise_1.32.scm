; General "accumulator" function. Abstractification, activate!
(define (accumulate combiner null-value term a next b)
  (if (> a b)
    null-value
    (combiner (term a)
              (accumulate combiner
                          null-value
                          term
                          (next a)
                          next
                          b))))

(define (identity x) x)

(define (inc x) (+ x 1))

; Product in terms of the general accumulator function:
(define (product term a next b)
  (accumulate * 1 term a next b))

; Same with sum:
(define (sum term a next b)
  (accumulate + 0 term a next b))


; Testing:
(display (product identity 1 inc 3)) ; should be 6
(newline)
(display (product identity 2 inc 5)) ; should be 120
(newline)
(display (product identity 10 inc 11)) ; should be 110
(newline)

(display (sum identity 0 inc 3)) ; should be 6
(newline)
(display (sum identity 10 inc 12)) ; should be 33
(newline)
(display (sum identity 5 inc 6)) ; should be 11
(newline)
