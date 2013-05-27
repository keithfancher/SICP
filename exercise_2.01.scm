; Make negative... NO MATTER WHAT.
(define (negify x)
  (* -1 (abs x)))

; Rational number... not an actual rat :(
; Should handle numerator, denominator, or both being negative.
(define (make-rat n d)
  (let ((g (gcd n d))) ; for simplification
    (cons (if (< (/ n d) 0) ; normalizing sign
            (negify (/ n g))
            (abs (/ n g)))
          (abs (/ d g)))))

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
(define yet-other-neg-one-half (make-rat 3 -6))
(print-rat yet-other-neg-one-half) ; also -1/2
(newline)
