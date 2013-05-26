; Higher-order "product" function.
;   term: function to perform on each term
;   a: starting value
;   next: function to get next value from a
;   b: ending value
(define (product term a next b)
  (if (> a b)
    1
    (* (term a)
       (product term (next a) next b))))

; Yup.
(define (identity x) x)

; You know it.
(define (inc x) (+ x 1))

; Factorial, defined in terms of above product function.
(define (factorial x)
  (product identity 1 inc x))


;Testing:
(display (product identity 1 inc 3)) ; should be 6
(newline)
(display (product identity 2 inc 5)) ; should be 120
(newline)
(display (product identity 10 inc 11)) ; should be 110
(newline)

(display (factorial 3)) ; 6
(newline)
(display (factorial 6)) ; 720
(newline)
(display (factorial 10)) ; 3628800
(newline)
