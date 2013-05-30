; Call with an arbitrary number of arguments. Will return a list with all
; arguments filtered out that don't match the parity (oddness/evenness) of the
; first argument.
(define (same-parity x . y)
  (let ((odd (modulo x 2))) ; this will be 1 or 0... sort of a fake bool
    (define (filt l) ; I know "filter" exists, just trying it this way for fun
      (if (null? l)
        l ; empty list, just return
        (if (= odd (modulo (car l) 2)) ; otherwise check parity of (car l)
          (cons (car l) (filt (cdr l))) ; if it matches, grab element and recurse
          (filt (cdr l))))) ; otherwise drop element and recurse
    (filt (cons x y)))) ; slap elements together and filter!


; Testing
(display (same-parity 1 2 3 4 5 6 7 8 9)) ; (1 3 5 7 9)
(newline)
(display (same-parity 2 3 4 5 6 7 8 9)) ; (2 4 6 8)
(newline)
