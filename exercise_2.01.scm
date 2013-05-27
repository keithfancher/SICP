; Make negative... NO MATTER WHAT.
(define (negify x)
  (* -1 (abs x)))

; Rational number... not an actual rat :(
; Should handle numerator, denominator, or both being negative.
(define (make-rat n d)
  (cons (if (< (/ n d) 0)
          (negify n)
          (abs n))
        (abs d)))

; Show numerator of rat.
(define (numer x) (car x))

; Denominator of rat.
(define (denom x) (cdr x))

; Gimme that rat.
(define (print-rat x)
  (display (numer x))
  (display "/")
  (display (denom x)))


; Testing:
(define one-half (make-rat 1 2))
(print-rat one-half) ; 1/2
(newline)
(define other-one-half (make-rat -1 -2))
(print-rat other-one-half) ; should just be 1/2 as well
(newline)
(define neg-one-half (make-rat -1 2))
(print-rat neg-one-half) ; -1/2
(newline)
(define other-neg-one-half (make-rat 1 -2))
(print-rat other-neg-one-half) ; also -1/2
(newline)
