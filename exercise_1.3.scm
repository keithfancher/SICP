(define (square x)
  (* x x))


(define (sum-of-squares x y)
  (+ (square x) (square y)))


; Takes three numbers and returns the sum of squares of two larger numbers
(define (sum-of-larger-squares x y z)
  (cond ((and (>= x z) (>= y z)) (sum-of-squares x y))
        ((and (>= x y) (>= z y)) (sum-of-squares x z))
        ((and (>= y x) (>= z x)) (sum-of-squares y z))))


; Testing:
(display (sum-of-larger-squares 1 2 3))
(newline)
(display (sum-of-larger-squares 3 3 3))
(newline)
